
MAKETP	= ../../conf/maketp.inc
TPSRC	= ../../../../src/func_test/STL_CPU_N010/src
TPINC	= ../../../../src/func_test/STL_CPU_N010/inc

01OBJS	= cpu_n010.out

TPOBJS	= $(01OBJS) 

all:	$(TPOBJS)
	@echo "Finished building executable for CPU 010."

clean:	cleanall

cleanall:
	$(RM) $(TPOBJS)
	$(RM) *.*

include	$(MAKETP)
