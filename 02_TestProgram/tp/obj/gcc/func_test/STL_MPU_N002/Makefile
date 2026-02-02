
MAKETP	= ../../conf/maketp.inc
TPSRC	= ../../../../src/func_test/STL_MPU_N002/src
TPINC	= ../../../../src/func_test/STL_MPU_N002/inc

01OBJS	= mpu_n002.out

TPOBJS	= $(01OBJS) 

all:	$(TPOBJS)
	@echo "Finished building executable for MPU 002."

clean:	cleanall

cleanall:
	$(RM) $(TPOBJS)
	$(RM) *.*

include	$(MAKETP)
