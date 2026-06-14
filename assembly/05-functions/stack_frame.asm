section .bss
    numbuf  resb 12

section .text
    global _start

_start:
    push 20                 ; second argument (pushed first)
    push 22                 ; first argument
    call sum                ; result in eax
    add esp, 8              ; caller cleans up the two pushed args
    call print_int

    mov eax, 1
    xor ebx, ebx
    int 0x80

; sum -- adds two arguments passed on the stack
;   [ebp+8]  = first argument
;   [ebp+12] = second argument
sum:
    push ebp                ; save the caller's frame pointer
    mov ebp, esp            ; establish our own frame
    mov eax, [ebp+8]        ; load first argument
    add eax, [ebp+12]       ; add second argument
    pop ebp                 ; restore the caller's frame pointer
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
