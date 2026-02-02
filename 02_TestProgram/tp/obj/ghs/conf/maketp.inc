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
CONFDIR		= $(TOPDIR)/tp/obj/ghs/conf

TOOLS		= C:/GHS/comp_202414

################################################################################
# GHS Compiler command and options
################################################################################
CCARM  = "$(TOOLS)/ccarm.exe"
ASARM  = "$(TOOLS)/ccarm.exe"
ELXR   = "$(TOOLS)/ccarm.exe"

# Assembler options and flags
AFLAGS = -Odebug -G -cpu=cortexm33 -fpu=vfpv5_d16 -preprocess_assembly_files -gsize -passsource -Wundef --short_enum --prototype_errors --diag_error 193 -dual_debug --no_commons -Wshadow -delete -MMD -gcc -entry=Reset_Handler 

# C options and flags
CFLAGS = -thumb -Odebug -G -cpu=cortexm33 -fpu=vfpv5_d16 -gsize -passsource -Wundef --short_enum --prototype_errors --diag_error 193 -dual_debug --no_commons -Wshadow -delete -MMD -gcc -entry=Reset_Handler 

# Linker options and flags
SCATTER = $(TPDIR)/obj/ghs/conf/tp.ld

LFLAGS = -lstartup -Odebug -G -cpu=cortexm33 -fpu=vfpv5_d16 -gsize -passsource -Wundef --short_enum --prototype_errors --diag_error 193 -dual_debug --no_commons -Wshadow -delete -entry=Reset_Handler

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


BOOTSRC = $(TPDIR)/src/conf/startup_ghs.c
BOOTOBJ = $(CONFDIR)/startup_ghs.o

VPATH = $(COMMON) $(SCHEDULER) $(STL_TEST_CPU) $(STL_TEST_MPU) $(STL_TEST_NVIC) $(TPSRC)
################################################################################
# Build CST resources
################################################################################

cst_objs = $(common_asm_objs) $(common_objs) $(scheduler_objs) $(stl_cpu_test_objs) $(stl_mpu_test_objs) $(stl_nvic_test_objs)

# Build common
$(common_asm_objs): $(COMMON)/$(@F:.o=.asm)
	$(CCARM) $(AFLAGS) $(CSTINC) -D__GHS__ -c $(COMMON)/$(@F:.o=.asm) -o $@

$(common_objs): $(COMMON)/$(@F:.o=.c)
	$(CCARM) $(CFLAGS) $(CSTINC) -D__GHS__ -c $(COMMON)/$(@F:.o=.c) -o $@

# Build scheduler
$(scheduler_objs): $(SCHEDULER)/$(@F:.o=.c)
	$(CCARM) $(CFLAGS) $(CSTINC) -D__GHS__ -c $(SCHEDULER)/$(@F:.o=.c) -o $@

# Build stl tests
$(stl_cpu_test_objs): $(STL_TEST_CPU)/$(@F:.o=.asm)
	$(CCARM) $(AFLAGS) $(CSTINC) -D__GHS__ -c $(STL_TEST_CPU)/$(@F:.o=.asm) -o $@

$(stl_mpu_test_objs): $(STL_TEST_MPU)/$(@F:.o=.asm)
	$(CCARM) $(AFLAGS) $(CSTINC) -D__GHS__ -c $(STL_TEST_MPU)/$(@F:.o=.asm) -o $@

$(stl_nvic_test_objs): $(STL_TEST_NVIC)/$(@F:.o=.asm)
	$(CCARM) $(AFLAGS) $(CSTINC) -D__GHS__ -c $(STL_TEST_NVIC)/$(@F:.o=.asm) -o $@
################################################################################
# Build Application
################################################################################
# tp 01
$(01OBJS):$(TPSRC)/$(@F:.out=.c) $(BOOTOBJ) $(cst_objs)
	$(CCARM) $(CFLAGS) -I $(TPINC) $(CSTINC) -DCST_LIBRARY -c $(TPSRC)/$(@F:.out=.c) -o $(@F:.out=.o)
	$(ELXR) $(SCATTER) $(LFLAGS) -o $@ $(BOOTOBJ) $(@F:.out=.o) $(cst_objs)

# startup
$(BOOTOBJ): $(BOOTSRC)
	$(CCARM) $(CFLAGS) -I $(TPINC) $(CSTINC) -c $(BOOTSRC) -o $(BOOTOBJ)