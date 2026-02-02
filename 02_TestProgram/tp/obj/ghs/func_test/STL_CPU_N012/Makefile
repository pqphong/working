
MAKETP	= ../../conf/maketp.inc
TPSRC	= ../../../../src/func_test/STL_CPU_N012/src
TPINC	= ../../../../src/func_test/STL_CPU_N012/inc

01OBJS	= cpu_n012.out

TPOBJS	= $(01OBJS) 

all:	$(TPOBJS)
	@echo "Finished building executable for CPU 012."

clean:	cleanall

cleanall:
	$(RM) $(TPOBJS)
	$(RM) *.*

include	$(MAKETP)
