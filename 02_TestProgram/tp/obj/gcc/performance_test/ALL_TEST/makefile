
MAKETP	= ../../conf/maketp.inc
TPSRC	= ../../../../src/performance_test/ALL_TEST/src
TPINC	= ../../../../src/performance_test/ALL_TEST/inc

01OBJS	= perf_all.out

TPOBJS	= $(01OBJS) 

all:	$(TPOBJS)
	@echo "Finished building executable for performance test."

clean:	cleanall

cleanall:
	$(RM) $(TPOBJS)
	$(RM) *.*

include	$(MAKETP)
