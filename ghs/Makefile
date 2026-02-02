# Makefile to compile M33 STL with GHS

include config.mk

# Check of the Device parameter
ifneq ($(filter $(DEVICE),$(SUPPORTED_DEVICES)), $(DEVICE))
    $(error [Makefile] Device '$(DEVICE)' is not supported. Valid devices are: $(SUPPORTED_DEVICES))
endif

ifeq ($(DEVICE),U5L1)
    LDFLAGS += U5L1/section.ld
endif
ifeq ($(DEVICE),U5L2)
    LDFLAGS += U5L2/section.ld
endif
ifeq ($(DEVICE),U5L4)
    LDFLAGS += U5L4/section.ld
endif

C_OBJS := 	$(BUILD_DIR)/main0.o \
			$(BUILD_DIR)/M33_STL.o \
			$(BUILD_DIR)/m33_stl_datavect_Data.o \
			$(BUILD_DIR)/m33_stl_registerInfo.o \
			$(BUILD_DIR)/m33_stl_exceptions.o \
			$(BUILD_DIR)/boot.o \
			$(BUILD_DIR)/cstart0.o \
			$(BUILD_DIR)/vecttble0.o \




S_OBJS :=	$(BUILD_DIR)/m33_stl_in_context_switch.o \
			$(BUILD_DIR)/m33_stl_out_context_switch.o \
			$(BUILD_DIR)/m33_stl_compare.o \
			$(BUILD_DIR)/m33_stl_cpu_n000.o \
			$(BUILD_DIR)/m33_stl_cpu_n001.o \
			$(BUILD_DIR)/m33_stl_cpu_n002.o \
			$(BUILD_DIR)/m33_stl_cpu_n003.o \
			$(BUILD_DIR)/m33_stl_cpu_n004.o \
			$(BUILD_DIR)/m33_stl_cpu_n005.o \
			$(BUILD_DIR)/m33_stl_cpu_n006.o \
			$(BUILD_DIR)/m33_stl_cpu_n007.o \
			$(BUILD_DIR)/m33_stl_cpu_n008.o \
			$(BUILD_DIR)/m33_stl_cpu_n009.o \
			$(BUILD_DIR)/m33_stl_cpu_n010.o \
			$(BUILD_DIR)/m33_stl_cpu_n011.o \
			$(BUILD_DIR)/m33_stl_cpu_n012.o \
			$(BUILD_DIR)/m33_stl_cpu_n013.o \
			$(BUILD_DIR)/m33_stl_cpu_n014.o \
			$(BUILD_DIR)/m33_stl_cpu_n015.o \
			$(BUILD_DIR)/m33_stl_cpu_n016.o \
			$(BUILD_DIR)/m33_stl_cpu_n017.o \
			$(BUILD_DIR)/m33_stl_cpu_n018.o \
			$(BUILD_DIR)/m33_stl_cpu_n019.o \
			$(BUILD_DIR)/m33_stl_cpu_n020.o \
			$(BUILD_DIR)/m33_stl_cpu_n021.o \
			$(BUILD_DIR)/m33_stl_cpu_n022.o \
			$(BUILD_DIR)/m33_stl_cpu_n023.o \
			$(BUILD_DIR)/m33_stl_cpu_n024.o \
			$(BUILD_DIR)/m33_stl_cpu_n025.o \
			$(BUILD_DIR)/m33_stl_cpu_n026.o \
			$(BUILD_DIR)/m33_stl_cpu_n027.o \
			$(BUILD_DIR)/m33_stl_cpu_n028.o \
			$(BUILD_DIR)/m33_stl_cpu_n029.o \
			$(BUILD_DIR)/m33_stl_cpu_n030.o \
			$(BUILD_DIR)/m33_stl_cpu_n031.o \
			$(BUILD_DIR)/m33_stl_cpu_n032.o \
			$(BUILD_DIR)/m33_stl_cpu_n033.o \
			$(BUILD_DIR)/m33_stl_cpu_n034.o \
			$(BUILD_DIR)/m33_stl_cpu_n035.o \
			$(BUILD_DIR)/m33_stl_cpu_n036.o \
			$(BUILD_DIR)/m33_stl_cpu_n037.o \
			$(BUILD_DIR)/m33_stl_cpu_n038.o \
			$(BUILD_DIR)/m33_stl_cpu_n039.o \
			$(BUILD_DIR)/m33_stl_cpu_n040.o \
			$(BUILD_DIR)/m33_stl_cpu_n041.o \
			$(BUILD_DIR)/m33_stl_cpu_n042.o \
			$(BUILD_DIR)/m33_stl_cpu_n043.o \
			$(BUILD_DIR)/m33_stl_cpu_n044.o \
			$(BUILD_DIR)/m33_stl_cpu_n045.o \
			$(BUILD_DIR)/m33_stl_cpu_n046.o \
			$(BUILD_DIR)/m33_stl_cpu_n047.o \
			$(BUILD_DIR)/m33_stl_cpu_n048.o \
			$(BUILD_DIR)/m33_stl_cpu_n049.o \
			$(BUILD_DIR)/m33_stl_cpu_n050.o \
			$(BUILD_DIR)/m33_stl_cpu_n051.o \
			$(BUILD_DIR)/m33_stl_cpu_n052.o \
			$(BUILD_DIR)/m33_stl_cpu_n053.o \
			$(BUILD_DIR)/m33_stl_cpu_n054.o \
			$(BUILD_DIR)/m33_stl_cpu_n055.o \
			$(BUILD_DIR)/m33_stl_cpu_n056.o \
			$(BUILD_DIR)/m33_stl_cpu_n057.o \
			$(BUILD_DIR)/m33_stl_cpu_n058.o \
			$(BUILD_DIR)/m33_stl_cpu_n059.o \
			$(BUILD_DIR)/m33_stl_cpu_n060.o \
			$(BUILD_DIR)/m33_stl_cpu_n061.o \
			$(BUILD_DIR)/m33_stl_cpu_n062.o \
			$(BUILD_DIR)/m33_stl_cpu_n063.o \
			$(BUILD_DIR)/m33_stl_cpu_n064.o \
			$(BUILD_DIR)/m33_stl_cpu_n065.o \
			$(BUILD_DIR)/m33_stl_cpu_n066.o \
			$(BUILD_DIR)/m33_stl_cpu_n067.o \
			$(BUILD_DIR)/m33_stl_cpu_n068.o \
			$(BUILD_DIR)/m33_stl_cpu_n069.o \
			$(BUILD_DIR)/m33_stl_cpu_n070.o \
			$(BUILD_DIR)/m33_stl_cpu_n071.o \
			$(BUILD_DIR)/m33_stl_cpu_n072.o \
			$(BUILD_DIR)/m33_stl_mpu_n000.o \
			$(BUILD_DIR)/m33_stl_mpu_n001.o \
			$(BUILD_DIR)/m33_stl_nvic_n000.o \
			$(BUILD_DIR)/m33_stl_datavector_test_elements.o \
			$(BUILD_DIR)/m33_stl_utils.o

APP_ELF = $(OUT_DIR)/M33_STL.out

help:
	@echo 	"How to use this makefile:"
	@echo 	"make all DEVICE=<device_name>       -> Delete the Debug folder and objects folder and rebuild the M33 STL code with GHS"
	@echo	"The supported devices are the following:"
	@echo	"	U5L1"
	@echo	"	U5L2"
	@echo	"	U5L4 (default if the DEVICE parameter is not specified)"
	@echo 	"make clean     -> Clean all the generated objects, the Debug folder and the objects folder"

build_dir:
	mkdir Debug
	mkdir objects

# Target to build and link
all: clean build_dir $(APP_ELF)

BUILD_c = $(CC) $(CCOPT) $(CCDEF) $(INCLUDE_DIRS) -c -o $@ $<
BUILD_s = $(AS) $(ASOPT) $(ASDEF) $(INCLUDE_DIRS) -c -o $@ $<
LINK = $(LD) $(LDFLAGS) -o $@ $(C_OBJS) $(S_OBJS)

# Object creation
$(BUILD_DIR)/%.o: $(PROJ_DIR)/../STL/diagnostic/scheduler/src/%.c
	$(BUILD_c)
$(BUILD_DIR)/%.o: $(PROJ_DIR)/../STL/diagnostic/common/src/%.c
	$(BUILD_c)
$(BUILD_DIR)/%.o: $(PROJ_DIR)/../STL/diagnostic/common/src/%.asm
	$(BUILD_s)
$(BUILD_DIR)/%.o: $(PROJ_DIR)/../STL/diagnostic/tests/cpu/src/%.asm
	$(BUILD_s)
$(BUILD_DIR)/%.o: $(PROJ_DIR)/../STL/diagnostic/tests/nvic/src/%.asm
	$(BUILD_s)
$(BUILD_DIR)/%.o: $(PROJ_DIR)/../STL/diagnostic/tests/mpu/src/%.asm
	$(BUILD_s)
$(BUILD_DIR)/main0.o: $(PROJ_DIR)/main0.c
	$(BUILD_c)
$(BUILD_DIR)/cstart0.o: $(PROJ_DIR)/cstart0.arm
	$(BUILD_s)
$(BUILD_DIR)/vecttble0.o: $(PROJ_DIR)/vecttble0.arm
	$(BUILD_s)
$(BUILD_DIR)/boot.o: $(PROJ_DIR)/boot.arm
	$(BUILD_s)


$(APP_ELF): $(C_OBJS) $(S_OBJS)
	$(LINK)

# Clean
clean:
	rm -rf $(BUILD_DIR) $(OUT_DIR)

.PHONY: all clean build_dir
