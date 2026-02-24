strlen:
	push ebx 
	mov ebx , eax

nextchar:
	cmp byte [eax] , 0
	jz done
	inc eax 
	jmp nextchar

done:
	sub eax , ebx
	pop ebx
	ret

quit:
	mov eax , 1
	mov ebx , 0

	int 80h
