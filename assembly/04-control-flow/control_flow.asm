section .data
    pos_msg     db "Number is positive", 10
    pos_len     equ $ - pos_msg

    neg_msg     db "Number is negative", 10
    neg_len     equ $ - neg_msg

    zero_msg    db "Number is zero", 10
    zero_len    equ $ - zero_msg

    loop_msg    db "Loop iteration", 10
    loop_len    equ $ - loop_msg

    done_msg    db "Done", 10
    done_len    equ $ - done_msg

section .text
    global _start

_start:
    ; ---- if / else if / else ----
    mov eax, 7              ; the value we are testing

    cmp eax, 0
    jg  .positive           ; if eax > 0 goto .positive
    jl  .negative           ; else if eax < 0 goto .negative
    ; fall through: eax == 0

    mov eax, 4
    mov ebx, 1
    mov ecx, zero_msg
    mov edx, zero_len
    int 0x80
    jmp .after_if

.positive:
    mov eax, 4
    mov ebx, 1
    mov ecx, pos_msg
    mov edx, pos_len
    int 0x80
    jmp .after_if

.negative:
    mov eax, 4
    mov ebx, 1
    mov ecx, neg_msg
    mov edx, neg_len
    int 0x80
    ; fall through to .after_if

.after_if:
    ; ---- counted loop: print loop_msg 3 times ----
    mov ecx, 3              ; loop counter

.loop_start:
    push ecx                ; save counter (sys_write clobbers ecx)

    mov eax, 4
    mov ebx, 1
    mov ecx, loop_msg
    mov edx, loop_len
    int 0x80

    pop ecx                 ; restore counter
    dec ecx                 ; counter--
    jnz .loop_start         ; if counter != 0, loop again

    ; ---- print "Done" ----
    mov eax, 4
    mov ebx, 1
    mov ecx, done_msg
    mov edx, done_len
    int 0x80

    ; ---- exit ----
    mov eax, 1
    xor ebx, ebx
    int 0x80
