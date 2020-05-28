bits 64

section .text
    [GLOBAL strcspn:]

strcspn:
	push rbp
	xor r8, r8
	xor rcx, rcx
	jmp loop

reset:
	xor rcx, rcx
	inc rdi

loop:
	mov al, [rdi]
    mov bl, [rsi + rcx]
	inc r8
	cmp al, 0
	je end
	cmp al, bl
	je end
	jne loop_two

loop_two:
	mov al, [rdi]
    mov bl, [rsi + rcx]
	inc rcx
	cmp bl, 0
	je reset
	cmp al, bl
	je end
	jne loop_two

end:
	dec r8
	mov rax, r8
	pop rbp
	ret
