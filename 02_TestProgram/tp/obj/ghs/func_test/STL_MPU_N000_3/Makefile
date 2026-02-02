
MAKETP	= ../../conf/maketp.inc
TPSRC	= ../../../../src/func_test/STL_MPU_N000_3/src
TPINC	= ../../../../src/func_test/STL_MPU_N000_3/inc

01OBJS	= mpu_n000_3.out

TPOBJS	= $(01OBJS) 

all:	$(TPOBJS)
	@echo "Finished building executable for MPU 000 for region 3."

clean:	cleanall

cleanall:
	$(RM) $(TPOBJS)
	$(RM) *.*

include	$(MAKETP)
