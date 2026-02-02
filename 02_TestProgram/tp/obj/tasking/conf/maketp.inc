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

TOOLS		= C:/Tasking/carm/bin

################################################################################
# TASKING Compiler command and options
################################################################################
CCARM  = "$(TOOLS)/ccarm.exe"
ASARM  = "$(TOOLS)/ccarm.exe"
ELXR   = "$(TOOLS)/ccarm.exe"

# Assembler options and flags
AFLAGS = -Ccortex_m33 -t -Wa-gAHLs --list-files --list-format=-conditional,+cycle-count,+define-expansion,+empty-line,+equate,-equate-values,+generic,-generic-expansion,+hll,+line,+macro,-macro-expansion,+relocations,-section,-symbol,+wrap-lines --section-info=-list -Wa--error-limit=42 -DARMCM33 --iso=17 --language=-gcc,-volatile,+strings,-kanji --fp-model=cFzr -O2 --tradeoff=4 --compact-max-size=200 -g --error-limit=42 --source --global-type-checking 

# C options and flags
CFLAGS = -Ccortex_m33 -t -Wa-gAHLs --list-files --list-format=-conditional,+cycle-count,+define-expansion,+empty-line,+equate,-equate-values,+generic,-generic-expansion,+hll,+line,+macro,-macro-expansion,+relocations,-section,-symbol,+wrap-lines --section-info=-list -Wa--error-limit=42 -DARMCM33 --iso=17 --language=-gcc,-volatile,+strings,-kanji --fp-model=cFzr -O2 --tradeoff=4 --compact-max-size=200 -g --error-limit=42 --source --global-type-checking 

# Linker options and flags
SCATTER = $(TPDIR)/obj/tasking/conf/tp.lsl

LFLAGS = -Ccortex_m33 --t -Wl--error-limit=42 --fpu=none -lcthumb -lfpthumb -lrtthumb -g --fp-model=cFzr --global-type-checking --c++=14

VPATH = $(CSTSRC) $(CSTINC) $(TPSRC) $(TPINC) 

BOOTSRC = $(TPDIR)/src/conf/startup_tasking.c
BOOTOBJ = startup_tasking.o

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
	$(ELXR) --lsl-file=$(SCATTER) $(LFLAGS) -o $@ $(BOOTOBJ) $(@F:.out=.o) $(cst_objs)
	
# tp 02
$(02OBJS):$(TPSRC)/$(@F:.out=.c) $(BOOTOBJ) $(cst_objs)
	$(CCARM) $(CFLAGS) -I $(TPINC) -I $(CSTINC) -DCST_LIBRARY -c $(TPSRC)/$(@F:.out=.c) -o $(@F:.out=.o)
	$(ELXR) --lsl-file=$(SCATTER) $(LFLAGS) -o $@ $(BOOTOBJ) $(@F:.out=.o) $(cst_objs)

# tp 03
$(03OBJS):$(TPSRC)/$(@F:.out=.c) $(BOOTOBJ) $(cst_objs)
	$(CCARM) $(CFLAGS) -I $(TPINC) -I $(CSTINC) -DCST_LIBRARY -c $(TPSRC)/$(@F:.out=.c) -o $(@F:.out=.o)
	$(ELXR) --lsl-file=$(SCATTER) $(LFLAGS) -o $@ $(BOOTOBJ) $(@F:.out=.o) $(cst_objs)

# tp 04
$(04OBJS):$(TPSRC)/$(@F:.out=.c) $(BOOTOBJ) $(cst_objs)
	$(CCARM) $(CFLAGS) -I $(TPINC) -I $(CSTINC) -DCST_LIBRARY -c $(TPSRC)/$(@F:.out=.c) -o $(@F:.out=.o)
	$(ELXR) --lsl-file=$(SCATTER) $(LFLAGS) -o $@ $(BOOTOBJ) $(@F:.out=.o) $(cst_objs)	
	
# tp 05
$(05OBJS):$(TPSRC)/$(@F:.out=.c) $(BOOTOBJ) $(cst_objs)
	$(CCARM) $(CFLAGS) -I $(TPINC) -I $(CSTINC) -DCST_LIBRARY -c $(TPSRC)/$(@F:.out=.c) -o $(@F:.out=.o)
	$(ELXR) --lsl-file=$(SCATTER) $(LFLAGS) -o $@ $(BOOTOBJ) $(@F:.out=.o) $(cst_objs)

# startup
$(BOOTOBJ): $(BOOTSRC)
	$(CCARM) $(CFLAGS) -I $(TPINC) -I $(CSTINC) -c $(BOOTSRC) -o $(BOOTOBJ)