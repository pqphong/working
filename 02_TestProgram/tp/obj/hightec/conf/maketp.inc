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
CST_DIR 	= $(TOPDIR)/cst
CSTINC += $(CST_DIR)/ghs/inc
CSTSRC += $(CST_DIR)/ghs/src

TOOLS		= C:/HighTec/toolchains/arm/v9.0.0/bin

################################################################################
# HighTec Compiler command and options
################################################################################
CCARM  = "$(TOOLS)/clang.exe"
ASARM  = "$(TOOLS)/clang.exe"
ELXR   = "$(TOOLS)/ld.lld.exe"

# Assembler options and flags
AFLAGS = --target=arm-arm-none-eabi -mcpu=cortex-m33 -Xassembler -gdwarf-4

# C options and flags
CFLAGS = --target=arm-arm-none-eabi -mcpu=cortex-m33 -mthumb -mfloat-abi=soft -mfpu=none -gdwarf-4 -std=c11 -nodefaultlibs -O3 -fno-builtin -ffunction-sections -fdata-sections -ftls-model=local-exec -ffreestanding

# Linker options and flags
SCATTER = $(TPDIR)/obj/hightec/conf/tp.ld

LFLAGS = --check-sections --error-unresolved-symbols --print-map --entry=Reset_Handler

VPATH = $(CSTSRC) $(CSTINC) $(TPSRC) $(TPINC) 

BOOTSRC = $(TPDIR)/src/conf/startup_hightec.c
BOOTOBJ = startup_hightec.o

CST_ASM_OBJS := $(patsubst %.arm, %.o, $(notdir $(wildcard $(CSTSRC)/*.arm)))
CST_C_OBJS := $(patsubst %.c, %.o, $(notdir $(wildcard $(CSTSRC)/*.c)))

################################################################################
# Build CST module
################################################################################

cst_objs = $(CST_ASM_OBJS) $(CST_C_OBJS)

# Build CST resources
$(CST_ASM_OBJS): $(CSTSRC)/$(@F:.o=.arm)
	$(CCARM) $(AFLAGS) -I $(CSTINC) -D__ASM__ -c $(CSTSRC)/$(@F:.o=.arm) -o $(@F)

$(CST_C_OBJS): $(CSTSRC)/$(@F:.o=.c)
	$(CCARM) $(CFLAGS) -I $(CSTINC) -DCST_LIBRARY -c $(CSTSRC)/$(@F:.o=.c) -o $(@F)

################################################################################
# Build Application
################################################################################
# tp 01
$(01OBJS):$(TPSRC)/$(@F:.out=.c) $(BOOTOBJ) $(cst_objs)
	$(CCARM) $(CFLAGS) -I $(TPINC) -I $(CSTINC) -DCST_LIBRARY -c $(TPSRC)/$(@F:.out=.c) -o $(@F:.out=.o)
	$(ELXR) -T $(SCATTER) $(LFLAGS) -o $@ $(BOOTOBJ) $(@F:.out=.o) $(cst_objs) > $(@F:.out=.map)
	
# tp 02
$(02OBJS):$(TPSRC)/$(@F:.out=.c) $(BOOTOBJ) $(cst_objs)
	$(CCARM) $(CFLAGS) -I $(TPINC) -I $(CSTINC) -DCST_LIBRARY -c $(TPSRC)/$(@F:.out=.c) -o $(@F:.out=.o)
	$(ELXR) -T $(SCATTER) $(LFLAGS) -o $@ $(BOOTOBJ) $(@F:.out=.o) $(cst_objs) > $(@F:.out=.map)

# tp 03
$(03OBJS):$(TPSRC)/$(@F:.out=.c) $(BOOTOBJ) $(cst_objs)
	$(CCARM) $(CFLAGS) -I $(TPINC) -I $(CSTINC) -DCST_LIBRARY -c $(TPSRC)/$(@F:.out=.c) -o $(@F:.out=.o)
	$(ELXR) -T $(SCATTER) $(LFLAGS) -o $@ $(BOOTOBJ) $(@F:.out=.o) $(cst_objs) > $(@F:.out=.map)

# tp 04
$(04OBJS):$(TPSRC)/$(@F:.out=.c) $(BOOTOBJ) $(cst_objs)
	$(CCARM) $(CFLAGS) -I $(TPINC) -I $(CSTINC) -DCST_LIBRARY -c $(TPSRC)/$(@F:.out=.c) -o $(@F:.out=.o)
	$(ELXR) -T $(SCATTER) $(LFLAGS) -o $@ $(BOOTOBJ) $(@F:.out=.o) $(cst_objs)	> $(@F:.out=.map)
	
# tp 05
$(05OBJS):$(TPSRC)/$(@F:.out=.c) $(BOOTOBJ) $(cst_objs)
	$(CCARM) $(CFLAGS) -I $(TPINC) -I $(CSTINC) -DCST_LIBRARY -c $(TPSRC)/$(@F:.out=.c) -o $(@F:.out=.o)
	$(ELXR) -T $(SCATTER) $(LFLAGS) -o $@ $(BOOTOBJ) $(@F:.out=.o) $(cst_objs) > $(@F:.out=.map)

# startup
$(BOOTOBJ): $(BOOTSRC)
	$(CCARM) $(CFLAGS) -I $(TPINC) -I $(CSTINC) -c $(BOOTSRC) -o $(BOOTOBJ)