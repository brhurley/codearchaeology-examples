section .data
    msg_eq  db "7 == 7  -> equal", 10
    eqlen   equ $ - msg_eq
    msg_gt  db "9 >  4  -> greater", 10
    gtlen   equ $ - msg_gt
    msg_lt  db "2 <  5  -> less", 10
    ltlen   equ $ - msg_lt
    msg_no  db "branch not taken", 10
    nolen   equ $ - msg_no

section .text
    global _start

_start:
    ; --- equality test ---
    mov eax, 7
    cmp eax, 7
    jne not_equal           ; skip if not equal
    mov eax, 4
    mov ebx, 1
    mov ecx, msg_eq
    mov edx, eqlen
    int 0x80
    jmp gt_test
not_equal:
    mov eax, 4
    mov ebx, 1
    mov ecx, msg_no
    mov edx, nolen
    int 0x80

gt_test:
    ; --- signed greater-than ---
    mov eax, 9
    cmp eax, 4
    jle not_greater         ; jump if 9 <= 4 (it isn't)
    mov eax, 4
    mov ebx, 1
    mov ecx, msg_gt
    mov edx, gtlen
    int 0x80
    jmp lt_test
not_greater:
    mov eax, 4
    mov ebx, 1
    mov ecx, msg_no
    mov edx, nolen
    int 0x80

lt_test:
    ; --- signed less-than ---
    mov eax, 2
    cmp eax, 5
    jge not_less            ; jump if 2 >= 5 (it isn't)
    mov eax, 4
    mov ebx, 1
    mov ecx, msg_lt
    mov edx, ltlen
    int 0x80
    jmp done
not_less:
    mov eax, 4
    mov ebx, 1
    mov ecx, msg_no
    mov edx, nolen
    int 0x80

done:
    mov eax, 1
    xor ebx, ebx
    int 0x80
