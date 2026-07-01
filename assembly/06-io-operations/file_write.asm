section .data
    path     db "greeting.txt", 0   ; path MUST be null-terminated
    content  db "Written by assembly!", 10
    contentlen equ $ - content
    done     db "Wrote greeting.txt", 10
    donelen  equ $ - done

section .text
    global _start

_start:
    ; open (creating if needed) the file for writing
    mov eax, 5             ; sys_open
    mov ebx, path
    mov ecx, 0o1101        ; O_WRONLY | O_CREAT | O_TRUNC
    mov edx, 0o644         ; permission bits rw-r--r--
    int 0x80
    mov esi, eax          ; save the returned file descriptor

    ; write the content to the file (fd is in esi, not 1)
    mov eax, 4            ; sys_write
    mov ebx, esi
    mov ecx, content
    mov edx, contentlen
    int 0x80

    ; close the file to flush and release the descriptor
    mov eax, 6           ; sys_close
    mov ebx, esi
    int 0x80

    ; report success on stdout
    mov eax, 4
    mov ebx, 1
    mov ecx, done
    mov edx, donelen
    int 0x80

    mov eax, 1
    xor ebx, ebx
    int 0x80
