
extern long time();

long time()
{
    int cycles;
    asm volatile ("rdcycle %0" : "=r"(cycles));
    return cycles;
}

