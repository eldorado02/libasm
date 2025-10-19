section .text
	global ft_strlen ;rend la fonction globale


ft_strlen:
	mov rcx, 0           ; rcx compteur de boucle

.loop :
	mov al, byte [rdi + rcx]
	cmp byte al, 0 ; raha mitovy de ZF 1
	jz .done 
	inc rcx						; manova le valeur an le ZF (ZF le valeur azo t@ le comparaison)
	jmp .loop

.done :
	mov rax, rcx
	ret 


