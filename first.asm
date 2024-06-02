section .data
    hello db 'Hello, World!', 0

section .text
    global _start

_start:
    ; Print "Hello, World!"
    mov eax, 4           ; syscall number for sys_write (print)
    mov ebx, 1           ; file descriptor 1 (stdout)
    mov ecx, hello       ; pointer to the string
    mov edx, 13          ; string length
    int 0x80             ; call kernel

    ; Exit the program
    mov eax, 1           ; syscall number for sys_exit (exit)
    xor ebx, ebx         ; exit code 0
    int 0x80             ; call kernel
