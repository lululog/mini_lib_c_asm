;
; EPITECH PROJECT, 2019
; ASM_minilibc_bootstrap_2019
; File description:
; my_strlen.asm
;

bits 64

section .text
    [GLOBAL strlen:]

strlen:
    push rcx
    xor rcx, rcx

loop:
    cmp [rdi], byte 0
    jz end
    inc rcx
    inc rdi
    jmp loop

end:
    mov rax, rcx
    pop rcx
    ret
