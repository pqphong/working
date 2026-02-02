
MAKETP	= ../../conf/maketp.inc
TPSRC	= ../../../../src/func_test/STL_CPU_N037/src
TPINC	= ../../../../src/func_test/STL_CPU_N037/inc

01OBJS	= cpu_n037.out

TPOBJS	= $(01OBJS) 

all:	$(TPOBJS)
	@echo "Finished building executable for CPU 037."

clean:	cleanall

cleanall:
	$(RM) $(TPOBJS)
	$(RM) *.*

include	$(MAKETP)
