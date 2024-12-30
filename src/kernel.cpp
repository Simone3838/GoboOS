// kernel.cpp
extern "C" void kernel_main() {
    const char* message = "Hello, GoboOS!";
    unsigned short* video_memory = (unsigned short*)0xb8000;
    for (int i = 0; message[i] != '\0'; ++i) {
        video_memory[i] = (video_memory[i] & 0xFF00) | message[i];
    }
    while (1) {
        // Halt the CPU
        __asm__ __volatile__("hlt");
    }
}
