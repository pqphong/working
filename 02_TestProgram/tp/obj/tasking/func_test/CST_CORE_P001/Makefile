
MAKETP	= ../../conf/maketp.inc
TPSRC	= ../../../../src/func_test/CST_CORE_P001/src
TPINC	= ../../../../src/func_test/CST_CORE_P001/inc

01OBJS	= core_p1_01.out

TPOBJS	= $(01OBJS) 

all:	$(TPOBJS)
	@echo "Finished building executable for CORE 001."

clean:	cleanall

cleanall:
	$(RM) $(TPOBJS)
	$(RM) *.*

include	$(MAKETP)
