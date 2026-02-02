############################################################################### 
# File Name  : maketp.inc
# Description: Public makefile 
#------------------------------------------------------------------------------
# REVISION HISTORY
#------------------------------------------------------------------------------
# 
###############################################################################
TOPDIR		= ../../../../..
TPDIR		= $(TOPDIR)/tp
CST_DIR 	= $(TOPDIR)/STL/diagnostic
CONFDIR		= $(TOPDIR)/tp/obj/gcc/conf

TOOLS		= C:/Workspace/gcc/bin

################################################################################
# GCC Compiler command and options
################################################################################
CCARM  = "$(TOOLS)/arm-none-eabi-gcc.exe"
ASARM  = "$(TOOLS)/arm-none-eabi-gcc.exe"
ELXR   = "$(TOOLS)/arm-none-eabi-gcc.exe"

# Assembler options and flags
AFLAGS = -mcpu=cortex-m33 -mtune=cortex-m33 -mthumb -Xassembler -mfpu=fpv5-d16 -Xassembler -mfloat-abi=hard -std=c99 -x assembler-with-cpp -DGCC_COMPILER -fno-common -gdwarf-4 -mlittle-endian
#-x assembler-with-cpp -DGCC_COMPILER -Xassembler -mfpu=fpv5-d16 -Xassembler -mfloat-abi=hard -std=c99 -nostartfiles --gc-sections
# C options and flags
CFLAGS = -mcpu=cortex-m33 -mtune=cortex-m33 -mfpu=fpv5-d16 -mthumb -DGCC_COMPILER -fno-common -gdwarf-4 -mlittle-endian

# Linker options and flags
SCATTER = $(TPDIR)/obj/gcc/conf/tp.ld

LFLAGS = -mcpu=cortex-m33 -mtune=cortex-m33 -mfpu=fpv5-d16 -nostartfiles -Xlinker --gc-sections -Wl,-Map,output.map --specs=nano.specs --entry=Reset_Handler

################################################################################
# Makefile variables
################################################################################

# Shared
COMMON = $(CST_DIR)/common/src
common_asm_objs += $(patsubst %.asm, $(CONFDIR)/%.o, $(notdir $(wildcard $(COMMON)/*.asm)))
common_objs += $(patsubst %.c, $(CONFDIR)/%.o, $(notdir $(wildcard $(COMMON)/*.c)))

# Scheduler
SCHEDULER = $(CST_DIR)/scheduler/src
scheduler_objs := $(patsubst %.c, $(CONFDIR)/%.o, $(notdir $(wildcard $(SCHEDULER)/*.c)))

# Tests
STL_TEST_CPU = $(CST_DIR)/tests/cpu/src
stl_cpu_test_objs := $(patsubst %.asm, $(CONFDIR)/%.o, $(notdir $(wildcard $(STL_TEST_CPU)/*.asm)))

STL_TEST_MPU = $(CST_DIR)/tests/mpu/src
stl_mpu_test_objs := $(patsubst %.asm, $(CONFDIR)/%.o, $(notdir $(wildcard $(STL_TEST_MPU)/*.asm)))

STL_TEST_NVIC = $(CST_DIR)/tests/nvic/src
stl_nvic_test_objs := $(patsubst %.asm, $(CONFDIR)/%.o, $(notdir $(wildcard $(STL_TEST_NVIC)/*.asm)))


CSTINC_PATHS := $(CST_DIR)/common/inc $(CST_DIR)/scheduler/inc $(CST_DIR)/tests/cpu/inc $(CST_DIR)/tests/mpu/inc $(CST_DIR)/tests/nvic/inc
CSTINC := $(foreach dir,$(CSTINC_PATHS),-I $(dir))


BOOTSRC = $(TPDIR)/src/conf/startup_gcc.c
BOOTOBJ = $(CONFDIR)/startup_gcc.o

VPATH = $(COMMON) $(SCHEDULER) $(STL_TEST_CPU) $(STL_TEST_MPU) $(STL_TEST_NVIC) $(TPSRC)
################################################################################
# Build CST resources
################################################################################

cst_objs = $(common_asm_objs) $(common_objs) $(scheduler_objs) $(stl_cpu_test_objs) $(stl_mpu_test_objs) $(stl_nvic_test_objs)

# Build common
$(common_asm_objs): $(COMMON)/$(@F:.o=.asm)
	$(CCARM) $(AFLAGS) $(CSTINC) -D__GCC__ -c $(COMMON)/$(@F:.o=.asm) -o $@

$(common_objs): $(COMMON)/$(@F:.o=.c)
	$(CCARM) $(CFLAGS) $(CSTINC) -D__GCC__ -c $(COMMON)/$(@F:.o=.c) -o $@

# Build scheduler
$(scheduler_objs): $(SCHEDULER)/$(@F:.o=.c)
	$(CCARM) $(CFLAGS) $(CSTINC) -D__GCC__ -c $(SCHEDULER)/$(@F:.o=.c) -o $@

# Build stl tests
$(stl_cpu_test_objs): $(STL_TEST_CPU)/$(@F:.o=.asm)
	$(CCARM) $(AFLAGS) $(CSTINC) -D__GCC__ -c $(STL_TEST_CPU)/$(@F:.o=.asm) -o $@

$(stl_mpu_test_objs): $(STL_TEST_MPU)/$(@F:.o=.asm)
	$(CCARM) $(AFLAGS) $(CSTINC) -D__GCC__ -c $(STL_TEST_MPU)/$(@F:.o=.asm) -o $@

$(stl_nvic_test_objs): $(STL_TEST_NVIC)/$(@F:.o=.asm)
	$(CCARM) $(AFLAGS) $(CSTINC) -D__GCC__ -c $(STL_TEST_NVIC)/$(@F:.o=.asm) -o $@
################################################################################
# Build Application
################################################################################
# tp 01
$(01OBJS):$(TPSRC)/$(@F:.out=.c) $(BOOTOBJ) $(cst_objs)
	$(CCARM) $(CFLAGS) -I $(TPINC) $(CSTINC) -DCST_LIBRARY -c $(TPSRC)/$(@F:.out=.c) -o $(@F:.out=.o)
	$(ELXR) -T $(SCATTER) $(LFLAGS) -o $@ $(BOOTOBJ) $(@F:.out=.o) $(cst_objs)

# startup
$(BOOTOBJ): $(BOOTSRC)
	$(CCARM) $(CFLAGS) -I $(TPINC) $(CSTINC) -c $(BOOTSRC) -o $(BOOTOBJ)