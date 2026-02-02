ghs ?=false
iar ?=false
tasking ?=false
windriver ?=false
hightec ?=false
gcc ?=false
arm ?=false

all:
ifeq ($(ghs),true)
	@echo "Building ghs"
	cd ghs && make
endif
ifeq ($(iar),true)
	@echo "Building iar"
	cd iar && make
endif
ifeq ($(tasking),true)
	@echo "Building tasking"
	cd tasking && make
endif
ifeq ($(windriver),true)
	@echo "Building windriver"
	cd windriver && make
endif
ifeq ($(hightec),true)
	@echo "Building hightec"
	cd hightec && make
endif
ifeq ($(gcc),true)
	@echo "Building gcc"
	cd gcc && make
endif
ifeq ($(arm),true)
	@echo "Building arm"
	cd arm && make
endif

clean:
	@echo "Cleaning ghs"
	cd ghs && make clean
	@echo "Cleaning iar"
	cd iar && make clean
	@echo "Cleaning tasking"
	cd tasking && make clean
	@echo "Cleaning windriver"
	cd windriver && make clean
	@echo "Cleaning hightec"
	cd hightec && make clean
	@echo "Cleaning gcc"
	cd gcc && make clean
	@echo "Cleaning arm"
	cd arm && make clean
