section .data
    label_a     db "Byte in al: ", 0
    label_a_len equ $ - label_a - 1
    label_b     db "Word in ax: done", 10, 0
    label_b_len equ $ - label_b - 1
    newline     db 10

section .bss
    char_buf    resb 1      ; one byte buffer for printing

section .text
    global _start

_start:
    ; --- Byte example: store 'Z' (ASCII 90) in al ---
    mov al, 90              ; load byte value into al (low byte of eax)

    ; Print label
    mov eax, 4
    mov ebx, 1
    mov ecx, label_a
    mov edx, label_a_len
    int 0x80

    ; Store al value in buffer and print it
    mov byte [char_buf], 90     ; 'Z'
    mov eax, 4
    mov ebx, 1
    mov ecx, char_buf
    mov edx, 1
    int 0x80

    ; Print newline
    mov eax, 4
    mov ebx, 1
    mov ecx, newline
    mov edx, 1
    int 0x80

    ; --- Word example: load a 16-bit value into ax ---
    mov ax, 1000            ; 16-bit value; only lower 16 bits of eax are touched

    ; Print confirmation label
    mov eax, 4
    mov ebx, 1
    mov ecx, label_b
    mov edx, label_b_len
    int 0x80

    ; Exit
    mov eax, 1
    xor ebx, ebx
    int 0x80
