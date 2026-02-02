
MAKETP	= ../../conf/maketp.inc
TPSRC	= ../../../../src/func_test/STL_CPU_N009/src
TPINC	= ../../../../src/func_test/STL_CPU_N009/inc

01OBJS	= cpu_n009.out

TPOBJS	= $(01OBJS) 

all:	$(TPOBJS)
	@echo "Finished building executable for CPU 009."

clean:	cleanall

cleanall:
	$(RM) $(TPOBJS)
	$(RM) *.*

include	$(MAKETP)
