section .bss
    numbuf  resb 12         ; scratch buffer for the digits

section .text
    global _start

_start:
    mov eax, 7              ; first argument
    mov ebx, 5              ; second argument
    call add_numbers        ; result returned in eax
    call print_int          ; prints the value in eax

    mov eax, 1              ; sys_exit
    xor ebx, ebx
    int 0x80

; add_numbers -- eax + ebx, result in eax
add_numbers:
    add eax, ebx
    ret

; print_int -- prints the unsigned integer in eax, followed by a newline
print_int:
    mov edi, numbuf + 11    ; work backwards from the end of the buffer
    mov byte [edi], 10      ; place a trailing newline
    mov ecx, 10             ; divisor
.loop:
    xor edx, edx            ; clear high half before dividing
    div ecx                 ; edx:eax / 10 -> quotient in eax, remainder in edx
    add dl, '0'             ; turn remainder (0-9) into an ASCII digit
    dec edi
    mov [edi], dl           ; store the digit
    test eax, eax           ; more digits left?
    jnz .loop
    mov ecx, edi            ; ecx = start of the digit string
    mov edx, numbuf + 12    ; edx = length = end - start
    sub edx, edi
    mov eax, 4              ; sys_write
    mov ebx, 1              ; stdout
    int 0x80
    ret
