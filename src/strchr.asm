;
; EPITECH PROJECT, 2019
; ASM_minilibc_bootstrap_2019
; File description:
; my_strchr.asm
;

bits 64

section .text
    [GLOBAL strchr:]

strchr:
	push rbp

loop:
	cmp byte [rdi], sil
	je end
	cmp byte [rdi], 0
	je end_null
	inc rdi
	jmp loop

end_null:
	mov rax, 0
	pop rbp
	ret

end:
	mov rax, rdi
	pop rbp
	ret
