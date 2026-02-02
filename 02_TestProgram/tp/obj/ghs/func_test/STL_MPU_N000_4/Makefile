
MAKETP	= ../../conf/maketp.inc
TPSRC	= ../../../../src/func_test/STL_MPU_N000_4/src
TPINC	= ../../../../src/func_test/STL_MPU_N000_4/inc

01OBJS	= mpu_n000_4.out

TPOBJS	= $(01OBJS) 

all:	$(TPOBJS)
	@echo "Finished building executable for MPU 000 for region 4."

clean:	cleanall

cleanall:
	$(RM) $(TPOBJS)
	$(RM) *.*

include	$(MAKETP)
