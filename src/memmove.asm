bits 64

section .text
    [GLOBAL memmove:]

memmove:
	push rbp
    xor rcx, rcx
    mov rcx, rdx
    cmp rdx, 0
    je end

loop:
    mov al, [rsi]
    mov [rdi], al
    cmp rcx, 1
    je end
    inc rsi
    inc rdi
    dec rcx
    jmp loop

end:
	pop rbp
	ret
