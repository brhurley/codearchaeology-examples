section .data
    path     db "greeting.txt", 0
    header   db "File contents:", 10
    headerlen equ $ - header

section .bss
    filebuf resb 256        ; buffer for the file's bytes

section .text
    global _start

_start:
    ; announce what we are about to show
    mov eax, 4
    mov ebx, 1
    mov ecx, header
    mov edx, headerlen
    int 0x80

    ; open the file for reading
    mov eax, 5            ; sys_open
    mov ebx, path
    mov ecx, 0           ; O_RDONLY
    mov edx, 0           ; mode ignored when not creating
    int 0x80
    mov esi, eax         ; save the file descriptor

    ; read up to 256 bytes from the file
    mov eax, 3           ; sys_read
    mov ebx, esi
    mov ecx, filebuf
    mov edx, 256
    int 0x80
    mov edx, eax         ; bytes actually read = length to echo

    ; write those bytes to stdout
    mov eax, 4           ; sys_write
    mov ebx, 1
    mov ecx, filebuf
    int 0x80

    ; close the file
    mov eax, 6           ; sys_close
    mov ebx, esi
    int 0x80

    mov eax, 1
    xor ebx, ebx
    int 0x80
