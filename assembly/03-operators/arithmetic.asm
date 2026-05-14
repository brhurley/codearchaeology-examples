section .data
    line1 db "5 + 3 = X", 10
    line1len equ $ - line1
    line2 db "9 - 4 = X", 10
    line2len equ $ - line2
    line3 db "3 * 2 = X", 10
    line3len equ $ - line3
    line4 db "8 / 3 = X r Y", 10
    line4len equ $ - line4

section .text
    global _start

_start:
    ; Addition: AL = 5 + 3
    mov al, 5
    add al, 3
    add al, '0'              ; convert digit to ASCII
    mov [line1 + 8], al

    ; Subtraction: AL = 9 - 4
    mov al, 9
    sub al, 4
    add al, '0'
    mov [line2 + 8], al

    ; Multiplication: AX = AL * BL (unsigned)
    mov al, 3
    mov bl, 2
    mul bl                   ; AX = 3 * 2 = 6
    add al, '0'
    mov [line3 + 8], al

    ; Division: AL = AX / BL quotient, AH = remainder
    mov ax, 8
    mov bl, 3
    div bl                   ; AL=2, AH=2
    add ah, '0'              ; remainder first (still in AH)
    mov [line4 + 12], ah
    add al, '0'
    mov [line4 + 8], al

    ; write each line to stdout
    mov eax, 4
    mov ebx, 1
    mov ecx, line1
    mov edx, line1len
    int 0x80

    mov eax, 4
    mov ebx, 1
    mov ecx, line2
    mov edx, line2len
    int 0x80

    mov eax, 4
    mov ebx, 1
    mov ecx, line3
    mov edx, line3len
    int 0x80

    mov eax, 4
    mov ebx, 1
    mov ecx, line4
    mov edx, line4len
    int 0x80

    mov eax, 1
    xor ebx, ebx
    int 0x80
