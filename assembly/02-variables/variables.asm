section .data
    ; A single byte: value 65 (ASCII 'A')
    my_byte     db 65

    ; A 32-bit integer: value 42
    my_int      dd 42

    ; A string (array of bytes) with a newline at the end
    my_string   db "Assembly variables demo", 10
    str_len     equ $ - my_string

    ; An assembler constant — no memory is allocated
    MY_CONST    equ 100

    ; A label for the done message
    done_msg    db "Data defined in .data section", 10
    done_len    equ $ - done_msg

section .text
    global _start

_start:
    ; Print the done message to show the program runs
    mov eax, 4          ; sys_write
    mov ebx, 1          ; stdout
    mov ecx, done_msg   ; pointer to message
    mov edx, done_len   ; length
    int 0x80

    ; Exit cleanly
    mov eax, 1          ; sys_exit
    xor ebx, ebx        ; exit code 0
    int 0x80
