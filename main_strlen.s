section .data 							; section data donnee global dans le fichier et deja initialiser
message db "Hi!", 0 				; initailisation de message en Hello World
message_format db "len = %d | str = [%s]", 10, 0

section .text 
global _start 							; main d'assembleur
extern ft_strlen
extern printf

_start:
	lea rdi, message				; load le message dans le rdi
	call ft_strlen

	mov rdi, message_format
	mov rsi, rax
	mov rdx, message
	xor rax, rax
	call printf

	mov rax, 60							; appel du syscall 60 (exit selon le table de system call)
	mov rdi, 127						; ajout de paramatre 0 pour la fonctin exit
	syscall