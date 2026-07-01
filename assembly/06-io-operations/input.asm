section .data
    prompt   db "Enter your name: "
    promptlen equ $ - prompt
    greeting db "Hello, "
    greetlen equ $ - greeting

section .bss
    namebuf resb 64         ; space for the typed input

section .text
    global _start

_start:
    ; print the prompt (no newline, so input appears on the same line)
    mov eax, 4              ; sys_write
    mov ebx, 1
    mov ecx, prompt
    mov edx, promptlen
    int 0x80

    ; read up to 64 bytes from stdin
    mov eax, 3             ; sys_read
    mov ebx, 0            ; stdin
    mov ecx, namebuf
    mov edx, 64
    int 0x80
    mov esi, eax          ; save the byte count sys_read returned

    ; write the "Hello, " prefix
    mov eax, 4
    mov ebx, 1
    mov ecx, greeting
    mov edx, greetlen
    int 0x80

    ; echo exactly the bytes we read (esi includes the trailing newline)
    mov eax, 4
    mov ebx, 1
    mov ecx, namebuf
    mov edx, esi
    int 0x80

    mov eax, 1
    xor ebx, ebx
    int 0x80
