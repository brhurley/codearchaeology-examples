section .bss
    numbuf  resb 12

section .text
    global _start

_start:
    mov eax, 5              ; compute 5!
    call factorial          ; result in eax
    call print_int          ; prints 120

    mov eax, 1
    xor ebx, ebx
    int 0x80

; factorial -- n in eax, returns n! in eax
factorial:
    cmp eax, 1
    jle .base               ; if n <= 1, return 1
    push eax                ; save n on the stack
    dec eax                 ; compute n - 1
    call factorial          ; eax = (n - 1)!
    pop ebx                 ; restore n into ebx
    imul eax, ebx           ; eax = n * (n - 1)!
    ret
.base:
    mov eax, 1
    ret

; print_int -- prints the unsigned integer in eax, followed by a newline
print_int:
    mov edi, numbuf + 11
    mov byte [edi], 10
    mov ecx, 10
.loop:
    xor edx, edx
    div ecx
    add dl, '0'
    dec edi
    mov [edi], dl
    test eax, eax
    jnz .loop
    mov ecx, edi
    mov edx, numbuf + 12
    sub edx, edi
    mov eax, 4
    mov ebx, 1
    int 0x80
    ret
