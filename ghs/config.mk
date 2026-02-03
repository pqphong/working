# Configuration file

# Project Folders
PROJ_DIR = $(CURDIR)
BUILD_DIR = $(PROJ_DIR)/objects
OUT_DIR = $(PROJ_DIR)/Debug

CC = D:\comp_202414\ccarm.exe
AS = D:\comp_202414\ccarm.exe
LD = D:\comp_202414\ccarm.exe

# Device parameter
DEVICE ?= U5L4

# Devices supported
SUPPORTED_DEVICES := U5L4 U5L2 U5L1

# ASM options
ASOPT= -cpu=cortexm33 -fpu=vfpv5_d16 -preprocess_assembly_files
# ASM defs
ASDEF= -D__GHS__ -D__ASSEMBLER__

# CC options
CCOPT= -cpu=cortexm33 -fpu=vfpv5_d16 -Ogeneral --short_enum -dual_debug -delete --no_commons -g -gsize -passsource -Wundef --prototype_errors --diag_error 193 -Wshadow -MMD --gnu_asm --diag_suppress=2309 -fsingle

# CC defs
CCDEF=

# LD flags
LDFLAGS = -object_dir=Debug -cpu=cortexm33 -delete -e __start

# Include folders
INCLUDE_DIRS = -I$(PROJ_DIR)/testapp/inc

