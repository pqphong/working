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
CST_DIR 		= $(TOPDIR)/cst
CSTINC += $(CST_DIR)/ghs/inc
CSTSRC += $(CST_DIR)/ghs/src

TOOLS		= C:/iar/ewarm-9.70.1/arm/bin

################################################################################
# IAR Compiler command and options
################################################################################
CCARM  = "$(TOOLS)/iccarm.exe"
ASARM  = "$(TOOLS)/iasmarm.exe"
ELXR   = "$(TOOLS)/ilinkarm.exe"

# Assembler options and flags
AFLAGS = --cpu=Cortex-M33 -DARMCM33 -r --thumb --fpu=VFPv4_D16

# C options and flags
CFLAGS = -Oh --cpu=Cortex-M33 --thumb --fpu=VFPv4_D16 --require_prototypes --diag_error=Pe193 --debug -DARMCM33

# Linker options and flags
SCATTER = $(TPDIR)/obj/iar/conf/tp.icf

LFLAGS = --cpu=Cortex-M33 --semihosting --map + --entry=Reset_Handler

VPATH = $(CSTSRC) $(CSTINC) $(TPSRC) $(TPINC) 

BOOTSRC = $(TPDIR)/src/conf/startup_iar.c
BOOTOBJ = startup_iar.o

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
	$(ELXR) --config $(SCATTER) $(LFLAGS) -o $@ $(BOOTOBJ) $(@F:.out=.o) $(cst_objs)
	
# tp 02
$(02OBJS):$(TPSRC)/$(@F:.out=.c) $(BOOTOBJ) $(cst_objs)
	$(CCARM) $(CFLAGS) -I $(TPINC) -I $(CSTINC) -DCST_LIBRARY -c $(TPSRC)/$(@F:.out=.c) -o $(@F:.out=.o)
	$(ELXR) --config $(SCATTER) $(LFLAGS) -o $@ $(BOOTOBJ) $(@F:.out=.o) $(cst_objs)

# tp 03
$(03OBJS):$(TPSRC)/$(@F:.out=.c) $(BOOTOBJ) $(cst_objs)
	$(CCARM) $(CFLAGS) -I $(TPINC) -I $(CSTINC) -DCST_LIBRARY -c $(TPSRC)/$(@F:.out=.c) -o $(@F:.out=.o)
	$(ELXR) --config $(SCATTER) $(LFLAGS) -o $@ $(BOOTOBJ) $(@F:.out=.o) $(cst_objs)

# tp 04
$(04OBJS):$(TPSRC)/$(@F:.out=.c) $(BOOTOBJ) $(cst_objs)
	$(CCARM) $(CFLAGS) -I $(TPINC) -I $(CSTINC) -DCST_LIBRARY -c $(TPSRC)/$(@F:.out=.c) -o $(@F:.out=.o)
	$(ELXR) --config $(SCATTER) $(LFLAGS) -o $@ $(BOOTOBJ) $(@F:.out=.o) $(cst_objs)	
	
# tp 05
$(05OBJS):$(TPSRC)/$(@F:.out=.c) $(BOOTOBJ) $(cst_objs)
	$(CCARM) $(CFLAGS) -I $(TPINC) -I $(CSTINC) -DCST_LIBRARY -c $(TPSRC)/$(@F:.out=.c) -o $(@F:.out=.o)
	$(ELXR) --config $(SCATTER) $(LFLAGS) -o $@ $(BOOTOBJ) $(@F:.out=.o) $(cst_objs)

# startup
$(BOOTOBJ): $(BOOTSRC)
	$(CCARM) $(CFLAGS) -I $(TPINC) -I $(CSTINC) -c $(BOOTSRC) -o $(BOOTOBJ)