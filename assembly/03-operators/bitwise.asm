section .data
    a1 db "5 AND 3 = X", 10
    a1len equ $ - a1
    a2 db "5 OR  3 = X", 10
    a2len equ $ - a2
    a3 db "5 XOR 3 = X", 10
    a3len equ $ - a3
    a4 db "1 << 3  = X", 10
    a4len equ $ - a4
    a5 db "8 >> 2  = X", 10
    a5len equ $ - a5

section .text
    global _start

_start:
    ; 5 AND 3 = 0101 & 0011 = 0001 = 1
    mov al, 5
    and al, 3
    add al, '0'
    mov [a1 + 10], al

    ; 5 OR 3 = 0101 | 0011 = 0111 = 7
    mov al, 5
    or  al, 3
    add al, '0'
    mov [a2 + 10], al

    ; 5 XOR 3 = 0101 ^ 0011 = 0110 = 6
    mov al, 5
    xor al, 3
    add al, '0'
    mov [a3 + 10], al

    ; 1 << 3 = 8  (logical shift left by 3)
    mov al, 1
    shl al, 3
    add al, '0'
    mov [a4 + 10], al

    ; 8 >> 2 = 2  (logical shift right by 2)
    mov al, 8
    shr al, 2
    add al, '0'
    mov [a5 + 10], al

    ; print all five lines
    mov eax, 4
    mov ebx, 1
    mov ecx, a1
    mov edx, a1len
    int 0x80

    mov eax, 4
    mov ebx, 1
    mov ecx, a2
    mov edx, a2len
    int 0x80

    mov eax, 4
    mov ebx, 1
    mov ecx, a3
    mov edx, a3len
    int 0x80

    mov eax, 4
    mov ebx, 1
    mov ecx, a4
    mov edx, a4len
    int 0x80

    mov eax, 4
    mov ebx, 1
    mov ecx, a5
    mov edx, a5len
    int 0x80

    mov eax, 1
    xor ebx, ebx
    int 0x80
