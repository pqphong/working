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

TOOLS		= C:/Keil_v5/ARM/ARMCLANG/bin

################################################################################
# ARM Compiler command and options
################################################################################
CCARM  = "$(TOOLS)/armclang.exe"
ASARM  = "$(TOOLS)/armclang.exe"
ELXR   = "$(TOOLS)/armlink.exe"

# Assembler options and flags
AFLAGS = $(CFLAGS) -x assembler-with-cpp

# C options and flags
CFLAGS = -c -O3 --target=arm-arm-none-eabi -mcpu=Cortex-M33 -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -g -gdwarf-4 -fno-short-enums -nostdlib -nostdlibinc -mno-unaligned-access -MD -MP -Wundef

# Linker options and flags
SCATTER = $(TPDIR)/obj/arm/conf/tp.sct

LFLAGS = --cpu=Cortex-M33 --fpu=FPv5_D16 --datacompressor off --entry=Reset_Handler --callgraph --map --info=sizes --info=totals --info=unused --info=compression --info=stack --info=inline --diag_error=warning

VPATH = $(CSTSRC) $(CSTINC) $(TPSRC) $(TPINC) 

BOOTSRC = $(TPDIR)/src/conf/startup_arm.c
BOOTOBJ = startup_arm.o

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
	$(ELXR) --scatter $(SCATTER) $(LFLAGS) -o $@ $(BOOTOBJ) $(@F:.out=.o) $(cst_objs) > $(@F:.out=.map)
	
# tp 02
$(02OBJS):$(TPSRC)/$(@F:.out=.c) $(BOOTOBJ) $(cst_objs)
	$(CCARM) $(CFLAGS) -I $(TPINC) -I $(CSTINC) -DCST_LIBRARY -c $(TPSRC)/$(@F:.out=.c) -o $(@F:.out=.o)
	$(ELXR) --scatter $(SCATTER) $(LFLAGS) -o $@ $(BOOTOBJ) $(@F:.out=.o) $(cst_objs) > $(@F:.out=.map)

# tp 03
$(03OBJS):$(TPSRC)/$(@F:.out=.c) $(BOOTOBJ) $(cst_objs)
	$(CCARM) $(CFLAGS) -I $(TPINC) -I $(CSTINC) -DCST_LIBRARY -c $(TPSRC)/$(@F:.out=.c) -o $(@F:.out=.o)
	$(ELXR) --scatter $(SCATTER) $(LFLAGS) -o $@ $(BOOTOBJ) $(@F:.out=.o) $(cst_objs) > $(@F:.out=.map)

# tp 04
$(04OBJS):$(TPSRC)/$(@F:.out=.c) $(BOOTOBJ) $(cst_objs)
	$(CCARM) $(CFLAGS) -I $(TPINC) -I $(CSTINC) -DCST_LIBRARY -c $(TPSRC)/$(@F:.out=.c) -o $(@F:.out=.o)
	$(ELXR) --scatter $(SCATTER) $(LFLAGS) -o $@ $(BOOTOBJ) $(@F:.out=.o) $(cst_objs)	> $(@F:.out=.map)
	
# tp 05
$(05OBJS):$(TPSRC)/$(@F:.out=.c) $(BOOTOBJ) $(cst_objs)
	$(CCARM) $(CFLAGS) -I $(TPINC) -I $(CSTINC) -DCST_LIBRARY -c $(TPSRC)/$(@F:.out=.c) -o $(@F:.out=.o)
	$(ELXR) --scatter $(SCATTER) $(LFLAGS) -o $@ $(BOOTOBJ) $(@F:.out=.o) $(cst_objs) > $(@F:.out=.map)

# startup
$(BOOTOBJ): $(BOOTSRC)
	$(CCARM) $(CFLAGS) -I $(TPINC) -I $(CSTINC) -c $(BOOTSRC) -o $(BOOTOBJ)