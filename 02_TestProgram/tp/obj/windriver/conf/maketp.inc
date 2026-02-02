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

TOOLS		= C:/windriver/compilers/diab-7.0.6.0/WIN64/bin

################################################################################
# Windriver Compiler command and options
################################################################################
CCARM  = "$(TOOLS)/dcc.exe"
ASARM  = "$(TOOLS)/dcc.exe"
ELXR   = "$(TOOLS)/dld.exe"

# Assembler options and flags
AFLAGS = -tARMCORTEXM33MG:simple -Xpreprocess-assembly -XO -gdwarf-4

# C options and flags
CFLAGS = -tARMCORTEXM33MG:simple -XO -gdwarf-4

# Linker options and flags
SCATTER = $(TPDIR)/obj/windriver/conf/tp.dld

LFLAGS = -tARMCORTEXM33MG:simple -m6 -lc -limpl -e Reset_Handler

VPATH = $(CSTSRC) $(CSTINC) $(TPSRC) $(TPINC) 

BOOTSRC = $(TPDIR)/src/conf/startup_windriver.c
BOOTOBJ = startup_windriver.o

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
	$(ELXR) $(SCATTER) $(LFLAGS) -o $@ $(BOOTOBJ) $(@F:.out=.o) $(cst_objs) > $(@F:.out=.map)
	
# tp 02
$(02OBJS):$(TPSRC)/$(@F:.out=.c) $(BOOTOBJ) $(cst_objs)
	$(CCARM) $(CFLAGS) -I $(TPINC) -I $(CSTINC) -DCST_LIBRARY -c $(TPSRC)/$(@F:.out=.c) -o $(@F:.out=.o)
	$(ELXR) $(SCATTER) $(LFLAGS) -o $@ $(BOOTOBJ) $(@F:.out=.o) $(cst_objs) > $(@F:.out=.map)

# tp 03
$(03OBJS):$(TPSRC)/$(@F:.out=.c) $(BOOTOBJ) $(cst_objs)
	$(CCARM) $(CFLAGS) -I $(TPINC) -I $(CSTINC) -DCST_LIBRARY -c $(TPSRC)/$(@F:.out=.c) -o $(@F:.out=.o)
	$(ELXR) $(SCATTER) $(LFLAGS) -o $@ $(BOOTOBJ) $(@F:.out=.o) $(cst_objs) > $(@F:.out=.map)

# tp 04
$(04OBJS):$(TPSRC)/$(@F:.out=.c) $(BOOTOBJ) $(cst_objs)
	$(CCARM) $(CFLAGS) -I $(TPINC) -I $(CSTINC) -DCST_LIBRARY -c $(TPSRC)/$(@F:.out=.c) -o $(@F:.out=.o)
	$(ELXR) $(SCATTER) $(LFLAGS) -o $@ $(BOOTOBJ) $(@F:.out=.o) $(cst_objs)	> $(@F:.out=.map)
	
# tp 05
$(05OBJS):$(TPSRC)/$(@F:.out=.c) $(BOOTOBJ) $(cst_objs)
	$(CCARM) $(CFLAGS) -I $(TPINC) -I $(CSTINC) -DCST_LIBRARY -c $(TPSRC)/$(@F:.out=.c) -o $(@F:.out=.o)
	$(ELXR) $(SCATTER) $(LFLAGS) -o $@ $(BOOTOBJ) $(@F:.out=.o) $(cst_objs) > $(@F:.out=.map)

# startup
$(BOOTOBJ): $(BOOTSRC)
	$(CCARM) $(CFLAGS) -I $(TPINC) -I $(CSTINC) -c $(BOOTSRC) -o $(BOOTOBJ)