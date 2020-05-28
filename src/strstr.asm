;
; EPITECH PROJECT, 2019
; ASM_minilibc_bootstrap_2019
; File description:
; my_strstr.asm
;

bits 64

section .text
    [GLOBAL strstr:]

strstr:
	push rbp
	xor r8, r8
	xor r9, r9
	xor rcx, rcx
	jmp loop

reset:
	xor rcx, rcx
	xor r8, r8
	xor r9, r9
	inc rdi

loop:
	mov al, [rdi]
    mov bl, [rsi + rcx]
	cmp byte bl, 0
	je end
	cmp byte al, 0
	je end
	cmp al, bl
	je found_char
	jne reset

found_char:
	mov al, [rdi]
        mov bl, [rsi + rcx]
	cmp r9, 1
	jne result
	inc rdi
	inc rcx
	cmp byte bl, 0
	je end
	jmp loop

result:
	mov r8, rdi
	mov r9, 1
	inc rdi
	inc rcx
	cmp byte bl, 0
	je end
	jmp loop

end:
	mov rax, r8
	pop rbp
	ret
