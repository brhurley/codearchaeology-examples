section .data
    result_msg  db "Sum: ", 0
    msg_len     equ $ - result_msg - 1   ; exclude the null terminator
    newline     db 10
    nl_len      equ 1

section .bss
    ; Reserve space for two 32-bit integers
    num_a   resd 1      ; 4 bytes for first operand
    num_b   resd 1      ; 4 bytes for second operand
    result  resd 1      ; 4 bytes for the result

section .text
    global _start

_start:
    ; Store values into our .bss "variables"
    mov dword [num_a], 3    ; num_a = 3
    mov dword [num_b], 4    ; num_b = 4

    ; Load them into registers and add
    mov eax, [num_a]        ; eax = 3
    mov ebx, [num_b]        ; ebx = 4
    add eax, ebx            ; eax = 3 + 4 = 7

    ; Store the result back to memory
    mov [result], eax       ; result = 7

    ; Print "Sum: "
    mov eax, 4
    mov ebx, 1
    mov ecx, result_msg
    mov edx, msg_len
    int 0x80

    ; Convert result (7) to ASCII ('7' = 7 + 48) and print it
    mov eax, [result]       ; reload result into eax
    add eax, 48             ; convert to ASCII digit
    mov [result], eax       ; store back (reusing the memory as a char buffer)

    mov eax, 4
    mov ebx, 1
    mov ecx, result         ; pointer to the ASCII digit
    mov edx, 1              ; print one byte
    int 0x80

    ; Print newline
    mov eax, 4
    mov ebx, 1
    mov ecx, newline
    mov edx, nl_len
    int 0x80

    ; Exit
    mov eax, 1
    xor ebx, ebx
    int 0x80
