tcm ?= 0

ifeq ($(tcm), 1)
    TB_PATH ?= biriscv/tb/tb_tcm
else
    TB_PATH ?= biriscv/tb/tb_top
endif

all: build

build:
	make tcm=$(tcm) -C sw
	make -C $(TB_PATH)

hello: build
	cd $(TB_PATH) && ./build/test.x -f ../../../sw/hello/hello.elf

dhrystone: build
	cd $(TB_PATH) && ./build/test.x -f ../../../sw/dhrystone/dhrystone.elf

coremark: build
	cd $(TB_PATH) && ./build/test.x -f ../../../sw/coremark/coremark.elf

clean:
	make -C sw clean
	make -C biriscv/tb/tb_top clean
	make -C biriscv/tb/tb_tcm clean
