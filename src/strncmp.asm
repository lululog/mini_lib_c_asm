bits 64

section .text
    [GLOBAL strncmp:]

strncmp:
	push rbp
        xor rcx, rcx

loop:
        mov r9b, byte [rdi]
	mov r10b, byte [rsi]
	cmp r9b, 0
	je end
	cmp r10b, 0
	je end
	cmp r9b, r10b
	jne end
	inc rdi
	inc rsi
	inc rcx
	cmp rdx, rcx
	jle end
	jmp loop

end:
        movzx rax, r9b
        movzx rbx, r10b
        sub rax, rbx
        pop rbp
	ret
