
MAKETP	= ../../conf/maketp.inc
TPSRC	= ../../../../src/func_test/STL_MPU_N000_6/src
TPINC	= ../../../../src/func_test/STL_MPU_N000_6/inc

01OBJS	= mpu_n000_6.out

TPOBJS	= $(01OBJS) 

all:	$(TPOBJS)
	@echo "Finished building executable for MPU 000 for region 6."

clean:	cleanall

cleanall:
	$(RM) $(TPOBJS)
	$(RM) *.*

include	$(MAKETP)
