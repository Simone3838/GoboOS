nasm -f bin boot.asm -o boot.bin
i386-elf-gcc -ffreestanding -c kernel.cpp -o kernel.o
i386-elf-ld -o kernel.bin -T link.ld kernel.o
cat boot.bin kernel.bin > os-image.bin
