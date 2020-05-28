bits 64

section .text
    [GLOBAL memcpy:]

memcpy:
	xor rcx, rcx

loop:
	cmp rdx, rcx
	jle dec_rdi
 	mov r8b, byte [rsi + rcx]
 	mov [rdi], r8b
	inc rcx
	inc rdi
	jmp loop

dec_rdi:
	cmp rcx, 0
	je end
	dec rcx
	dec rdi
	jmp dec_rdi

end:
	mov rax, rdi
	ret
