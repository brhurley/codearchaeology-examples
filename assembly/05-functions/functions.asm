section .data
    intro   db "Calling a function...", 10
    introlen equ $ - intro
    hello   db "Hello from inside the function!", 10
    hellolen equ $ - hello

section .text
    global _start

_start:
    mov ecx, intro          ; pointer to string
    mov edx, introlen       ; length
    call print_string

    call greet              ; call our function...
    call greet              ; ...and call it again

    mov eax, 1              ; sys_exit
    xor ebx, ebx            ; exit code 0
    int 0x80

; greet -- prints the hello message, takes no arguments
greet:
    mov ecx, hello
    mov edx, hellolen
    call print_string
    ret                     ; pop return address, jump back to caller

; print_string -- ecx = pointer, edx = length
print_string:
    mov eax, 4              ; sys_write
    mov ebx, 1              ; stdout
    int 0x80
    ret
