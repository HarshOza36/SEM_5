print macro a
        mov dx,offset a
        mov ah,09
        int 21h
endm 
data segment
n1 db ?
a1 db 10,13, "Enter number:$"
a2 db 10,13, "The descending order is : $"
data ends
code segment
assume cs:code,ds:data
start:  mov ax,data
        mov ds,ax
        print a1
        mov ah,01
        int 21h
        sub al,30h
        mov bl,al
        int 21h
        sub al,30h
        mov ah,bl
        aad       
        mov bl,al
        mov n1,al
        print a2
        xor dx,dx
        L1: 	mov ax,bx
            	aam
                mov cx,ax
                mov ah,02
            	mov dl,ch
            	add dl,30h   
            	int 21h
                mov dl,cl
                add dl,30h
                int 21h
                mov dl,20h
                int 21h
                dec bl
            	jnz L1
        int 21h
       mov ax,4c00h
  int 21h
code ends
end start
