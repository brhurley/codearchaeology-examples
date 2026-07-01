section .data
    header   db "=== System Report ===", 10
    headerlen equ $ - header
    label    db "Answer: "
    labellen equ $ - label
    note     db "note: this line went to stderr", 10
    notelen  equ $ - note

section .bss
    numbuf  resb 12         ; scratch space for the digits of a number

section .text
    global _start

_start:
    ; write the header line to stdout (fd 1)
    mov eax, 4              ; sys_write
    mov ebx, 1             ; stdout
    mov ecx, header
    mov edx, headerlen
    int 0x80

    ; write "Answer: " with no trailing newline
    mov eax, 4
    mov ebx, 1
    mov ecx, label
    mov edx, labellen
    int 0x80

    ; convert the number 42 to text and print it (adds a newline)
    mov eax, 42
    call print_int

    ; write a diagnostic to stderr (fd 2) instead of stdout
    mov eax, 4
    mov ebx, 2            ; stderr
    mov ecx, note
    mov edx, notelen
    int 0x80

    mov eax, 1            ; sys_exit
    xor ebx, ebx          ; exit code 0
    int 0x80

; print_int -- prints the unsigned integer in eax, followed by a newline
print_int:
    mov edi, numbuf + 11   ; work backwards from the end of the buffer
    mov byte [edi], 10     ; place a trailing newline
    mov ecx, 10            ; divisor
.loop:
    xor edx, edx           ; clear high half before dividing
    div ecx                ; edx:eax / 10 -> quotient in eax, remainder in edx
    add dl, '0'            ; turn the remainder (0-9) into an ASCII digit
    dec edi
    mov [edi], dl          ; store the digit
    test eax, eax          ; more digits left?
    jnz .loop
    mov ecx, edi           ; ecx = start of the digit string
    mov edx, numbuf + 12   ; edx = length = end - start
    sub edx, edi
    mov eax, 4             ; sys_write
    mov ebx, 1            ; stdout
    int 0x80
    ret
