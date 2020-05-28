;
; EPITECH PROJECT, 2019
; ASM_minilibc_bootstrap_2019
; File description:
; my_memset.asm
;

bits 64

section .text
    [GLOBAL memset:]

memset:
	push rbp
	xor rcx, rcx
	mov rax, rdi

loop:
	cmp rdx, rcx
	jz end
	mov [rax], sil
	inc rcx
	inc rax
	jmp loop

end:
	pop rbp
	ret
