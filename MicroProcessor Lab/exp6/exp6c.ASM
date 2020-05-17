print macro a
        mov dx,offset a
        mov ah,09
        int 21h
endm 
data segment
n1 db ?
arr db 10(?)
a1 db 10,13, "Enter number of elements: $"
a2 db 10,13, "Even numbers are: $"
a3 db 10,13, "Odd numbers are: $"
data ends
code segment
assume cs:code,ds:data
start:  mov ax,data
        mov ds,ax
        print a1
        mov ah,01
        int 21h
        sub al,30h
        mov ah,00h
	aad
        mov n1,al
        mov bl,01h
        mov si, offset arr
L0: 	mov al,bl    
        mov [si], al
        inc si 
	inc bl      
        cmp n1, bl
	jge L0
	print a2
	mov si, offset arr	
	mov bl,01h	
L1:	mov al,[si]	
	mov cl,al
	inc si	
	inc bl	        
	and al,01h
	jz L11
	cmp n1,bl
	jge L1
	JMP L2
L11:    mov ah,02
        mov dl,cl
        add dl,30h
        int 21h		
        mov dl,20h
        int 21h
 	JMP L1    
L2:	print a3
	mov si, offset arr	
	mov bl,01h	
L21:	mov al,[si]	
	mov cl,al
	inc si	
	inc bl	        
	and al,01h
	jnz L22
	cmp n1,bl
	jge L21
	JMP L
L22:    mov ah,02
        mov dl,cl
        add dl,30h
        int 21h
        mov dl,20h
        int 21h
        JMP L21
L:      mov ax,4c00h
        int 21h	
code ends
end start
