rm *.o
rm *.elf
rm *.img
rm *.exe
rm *.dll
as -c -o boot.o boot.S
fbc -c kernel.bas -o kernel.o
ld -T link.ld boot.o kernel.o -o kernel.elf -nostdlib
objcopy kernel.elf -O binary kernel.bin
qemu-system-arm -m 128 -M raspi2 -serial stdio -kernel kernel.elf
