s1 segment
	n db ?
	f dW ?
	msg1 db,10, "Enter n: $"
	msg2 db,10, "Factorial is $"
s1 ends

s2 segment
assume cs:s2, ds:s1
start:	mov ax,s1
	mov ds,ax
	
	mov dx, offset msg1
	mov ah, 09
	int 21h
	
	mov ah, 01
	int 21h
	sub al, 30h
	mov n, al

	mov dx, offset msg2
	mov ah, 09
	int 21h
	
	xor cx, cx
	xor bx, bx
	mov ax, 01
	mov bl, n
	
	call factorial
	call result_print

	mov ah, 4ch
	int 21h

factorial proc
	cmp bx, 01
	jz last
	mul bx
	dec bx
	call factorial
last:	ret
factorial endp

result_print proc
	mov bx, 0ah
L1:	div bx
	push dx
	xor dx, dx
	inc cx
	cmp ax, 00
	jg L1
	
	mov ah, 02
	
L2:	pop dx
        add dx,30h
      	int 21h
      	loop L2
	
	ret
	
result_print endp
	
end START
s2 ends
