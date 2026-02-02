PERFORMANCE_TEST_DIR := performance_test
FUNC_TEST_DIR := func_test

all:
	$(if $(performance), \
		cd $(PERFORMANCE_TEST_DIR); make, \
		cd $(FUNC_TEST_DIR); make)

clean:
	cd ./conf; $(RM) *.d *.dbo *.o
	$(if $(performance), \
		cd $(PERFORMANCE_TEST_DIR); make clean, \
		cd $(FUNC_TEST_DIR); make clean)