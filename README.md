# biRISC-V - 32-bit dual issue RISC-V CPU Software Environment

biRISC-V is a 32-bit dual issue RISC-V CPU core, which can be obtained
from here,

github: http://github.com/ultraembedded/biriscv

This repo is for the software code running in the biRISC-V verilator
simulation enviroment. It includes coremark and dhrystone benchmarks.

# Geting Started

git clone --recursive https://github.com/kuopinghsu/biriscv.git

The SystemC and Verilator must be installed properly in system.

## Running Example

```
$ make hello
$ make coremark
$ make dhrystone
```

---
The output of coremark is;


```
        SystemC 2.3.3-Accellera --- May 18 2021 20:21:23
        Copyright (c) 1996-2018 by all Contributors,
        ALL RIGHTS RESERVED
Running: ../../../sw/coremark/coremark.elf
Memory: 0x80000000 - 0x8001800f (Size=96KB) [.text]
Memory: 0x80018010 - 0x8001804b (Size=0KB) [.eh_frame]
Memory: 0x80018050 - 0x80019da3 (Size=7KB) [.data]
Memory: 0x80019da4 - 0x8001ddf7 (Size=16KB) [.bss]

Info: (I702) default timescale unit used for tracing: 1 ns (sysc_wave.vcd)
2K performance run parameters for coremark.
CoreMark Size    : 666
Total ticks      : 1200103
Total time (secs): 0.012001
Iterations/Sec   : 333.304725
Iterations       : 4
Compiler version : GCC10.2.0
Compiler flags   : -O3 -march=rv32im -mabi=ilp32 -nostartfiles -nostdlib -L../common -DPERFORMANCE_RUN=1   -lc -lm -lgcc -lsys -T ../common/default.ld
Memory location  : STACK
seedcrc          : 0xe9f5
[0]crclist       : 0xe714
[0]crcmatrix     : 0x1fd7
[0]crcstate      : 0x8e3a
[0]crcfinal      : 0x9f95
Correct operation validated. See README.md for run and reporting rules.
CoreMark 1.0 : 333.304725 / GCC10.2.0 -O3 -march=rv32im -mabi=ilp32 -nostartfiles -nostdlib -L../common -DPERFORMANCE_RUN=1   -lc -lm -lgcc -lsys -T ../common/default.ld / STACK
CoreMark/MHz: 3.333047
TB: Aborted at 14684140 ns
```

---
The output of dhrystone is;


```
        SystemC 2.3.3-Accellera --- May 18 2021 20:21:23
        Copyright (c) 1996-2018 by all Contributors,
        ALL RIGHTS RESERVED
Running: ../../../sw/dhrystone/dhrystone.elf
Memory: 0x80000000 - 0x8001502f (Size=84KB) [.text]
Memory: 0x80015030 - 0x8001506b (Size=0KB) [.eh_frame]
Memory: 0x80015070 - 0x80016dcb (Size=7KB) [.data]
Memory: 0x80016dcc - 0x8001d60f (Size=26KB) [.bss]

Info: (I702) default timescale unit used for tracing: 1 ns (sysc_wave.vcd)

Dhrystone Benchmark, Version 2.1 (Language: C)

Program compiled without 'register' attribute

Please give the number of runs through the benchmark: 
Execution starts, 100 runs through Dhrystone
Execution ends

Final values of the variables used in the benchmark:

Int_Glob:            5
        should be:   5
Bool_Glob:           1
        should be:   1
Ch_1_Glob:           A
        should be:   A
Ch_2_Glob:           B
        should be:   B
Arr_1_Glob[8]:       7
        should be:   7
Arr_2_Glob[8][7]:    110
        should be:   Number_Of_Runs + 10
Ptr_Glob->
  Ptr_Comp:          -2147379688
        should be:   (implementation-dependent)
  Discr:             0
        should be:   0
  Enum_Comp:         2
        should be:   2
  Int_Comp:          17
        should be:   17
  Str_Comp:          DHRYSTONE PROGRAM, SOME STRING
        should be:   DHRYSTONE PROGRAM, SOME STRING
Next_Ptr_Glob->
  Ptr_Comp:          -2147379688
        should be:   (implementation-dependent), same as above
  Discr:             0
        should be:   0
  Enum_Comp:         1
        should be:   1
  Int_Comp:          18
        should be:   18
  Str_Comp:          DHRYSTONE PROGRAM, SOME STRING
        should be:   DHRYSTONE PROGRAM, SOME STRING
Int_1_Loc:           5
        should be:   5
Int_2_Loc:           13
        should be:   13
Int_3_Loc:           7
        should be:   7
Enum_Loc:            1
        should be:   1
Str_1_Loc:           DHRYSTONE PROGRAM, 1'ST STRING
        should be:   DHRYSTONE PROGRAM, 1'ST STRING
Str_2_Loc:           DHRYSTONE PROGRAM, 2'ND STRING
        should be:   DHRYSTONE PROGRAM, 2'ND STRING

Number_Of_Runs: 100
User_Time: 25362 cycles
Dhrystones_Per_Second_Per_MHz: 3942
DMIPS_Per_MHz: 2.243
TB: Aborted at 1678880 ns
```

