include ../common/Makefile.common

EXE      = .elf
SRC      = dhry_1.c dhry_2.c syscall.c
CFLAGS  += -DTIME -DRISCV -DHZ=100000000 -L../common
CFLAGS  += -Wno-return-type -Wno-implicit-function-declaration -Wno-implicit-int
LDFLAGS += -T ../common/$(LINKSCR)
TARGET   = dhrystone
OUTPUT   = $(TARGET)$(EXE)

.PHONY: all clean

all: $(TARGET)

$(TARGET): $(SRC)
	$(CC) $(CFLAGS) -o $(OUTPUT) $(SRC) $(LDFLAGS)
	$(OBJDUMP) -d $(OUTPUT) > $(TARGET).dis
	$(READELF) -a $(OUTPUT) > $(TARGET).symbol

clean:
	$(RM) *.o $(OUTPUT) $(TARGET).dis $(TARGET).symbol
