;
; EPITECH PROJECT, 2019
; ASM_minilibc_bootstrap_2019
; File description:
; my_strcmp.asm
;

bits 64

section .text
    [GLOBAL strcmp:]

strcmp:
    push rbp

loop:
    mov al, [rdi]
    mov bl, [rsi]
    cmp al, bl
    jne sub_str
    cmp al, 0
    je sub_str
    cmp bl, 0
    je sub_str
    inc rdi
    inc rsi
    jmp loop

sub_str:
    movzx rax, al
    movzx rbx, bl
    sub rax, rbx

end:
    pop rbp
    ret
