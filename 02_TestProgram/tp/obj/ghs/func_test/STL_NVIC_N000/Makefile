
MAKETP	= ../../conf/maketp.inc
TPSRC	= ../../../../src/func_test/STL_NVIC_N000/src
TPINC	= ../../../../src/func_test/STL_NVIC_N000/inc

01OBJS	= nvic_n000.out

TPOBJS	= $(01OBJS) 

all:	$(TPOBJS)
	@echo "Finished building executable for NVIC 000."

clean:	cleanall

cleanall:
	$(RM) $(TPOBJS)
	$(RM) *.*

include	$(MAKETP)
