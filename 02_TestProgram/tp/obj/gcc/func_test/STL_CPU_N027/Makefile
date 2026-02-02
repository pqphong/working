
MAKETP	= ../../conf/maketp.inc
TPSRC	= ../../../../src/func_test/STL_CPU_N027/src
TPINC	= ../../../../src/func_test/STL_CPU_N027/inc

01OBJS	= cpu_n027.out

TPOBJS	= $(01OBJS) 

all:	$(TPOBJS)
	@echo "Finished building executable for CPU 027."

clean:	cleanall

cleanall:
	$(RM) $(TPOBJS)
	$(RM) *.*

include	$(MAKETP)
