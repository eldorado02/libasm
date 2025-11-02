section .note.GNU-stack

section .text
	global ft_strcpy

end:
	mov rax, rdi
	ret

loop:
	mov r8, [rsi + rcx]
	mov [rdi + rcx], r8
	cmp byte [rsi + rcx], 0
	jz end
	add rcx, 1
	jmp loop

ft_strcpy :
	xor rcx, rcx
	jmp loop
