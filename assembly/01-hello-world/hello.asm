section .data
    message db "Hello, World!", 10
    msglen equ $ - message

section .text
    global _start

_start:
    mov eax, 4          ; sys_write system call number
    mov ebx, 1          ; file descriptor 1 (stdout)
    mov ecx, message    ; pointer to message
    mov edx, msglen     ; message length
    int 0x80            ; invoke kernel

    mov eax, 1          ; sys_exit system call number
    xor ebx, ebx        ; exit code 0
    int 0x80            ; invoke kernel
