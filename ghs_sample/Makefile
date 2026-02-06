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

# -----------------------------------------------------------------------------
# Objects (keep minimal for TestApp)
# -----------------------------------------------------------------------------
C_OBJS := \
	$(BUILD_DIR)/main0.o \
	$(BUILD_DIR)/ghs_tc_fpu_sample.o \
	$(BUILD_DIR)/ghs_tc_mpu_sample.o \
	$(BUILD_DIR)/ghs_tc_nvic_sample.o \
	$(BUILD_DIR)/mem_manage_handler.o

S_OBJS := \
	$(BUILD_DIR)/boot.o \
	$(BUILD_DIR)/cstart0.o \
	$(BUILD_DIR)/vecttble0.o \
	$(BUILD_DIR)/ghs_tc_fpu_sample_asm.o \
	$(BUILD_DIR)/ghs_tc_mpu_sample_asm.o \
	$(BUILD_DIR)/ghs_tc_nvic_sample_run_asm.o

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
	mkdir -p Debug
	mkdir -p objects

# Target to build and link
all: clean build_dir $(APP_ELF)

BUILD_c = $(CC) $(CCOPT) $(CCDEF) $(INCLUDE_DIRS) -c -o $@ $<
BUILD_s = $(AS) $(ASOPT) $(ASDEF) $(INCLUDE_DIRS) -c -o $@ $<
LINK = $(LD) $(LDFLAGS) -o $@ $(C_OBJS) $(S_OBJS)

# Object creation
$(BUILD_DIR)/%.o: $(PROJ_DIR)/testapp/src/%.c
	$(BUILD_c)
$(BUILD_DIR)/%.o: $(PROJ_DIR)/testapp/src/%.asm
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
