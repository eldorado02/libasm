section .text
	global ft_write

ft_write:
	mov rax, 1
	syscall
	cmp rax, 0
	jl	.error_done
	jmp .well_done


.well_done:
	ret

.error_done:
	mov rax, -1
	ret

section .note.GNU-stack noalloc noexec nowrite
