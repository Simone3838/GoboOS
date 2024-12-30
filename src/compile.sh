# Assemble the bootloader
nasm -f bin boot.asm -o boot.bin

# Compile the kernel
i686-elf-gcc -ffreestanding -m32 -c kernel.cpp -o kernel.o

# Link the kernel
i686-elf-ld -o kernel.bin -T kernel.ld kernel.o --oformat binary

# Create the OS image
cat boot.bin kernel.bin > os-image.bin
