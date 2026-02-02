PERFORMANCE_TEST_DIR := performance_test
FUNC_TEST_DIR := func_test

all:
	$(if $(performance), \
		cd $(PERFORMANCE_TEST_DIR); make -f maketime, \
		cd $(FUNC_TEST_DIR); make)

clean:
	$(if $(performance), \
		cd $(PERFORMANCE_TEST_DIR); make -f maketime clean, \
		cd $(FUNC_TEST_DIR); make clean)