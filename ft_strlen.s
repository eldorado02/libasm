section .note.GNU-stack

section .text
	global ft_strlen

end:
	mov rax, rcx
	ret

loop:
	cmp byte [rdi + rcx], 0 
	jz end
	add rcx, 1
	jmp loop

ft_strlen :
	xor rcx, rcx
	jmp loop
