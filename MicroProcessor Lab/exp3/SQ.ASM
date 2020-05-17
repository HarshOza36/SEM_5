print macro x
        mov dx,offset x
        mov ah,09h
        int 21h
endm
data segment
    str1 db 10,'enter no. $'
    str2 db 10,'square is $'
    n1 db ?
data ends

code segment
assume cs:code,ds:data
start: mov ax,data
       mov ds,ax
       print str1
       mov ah,01h
       int 21h
       sub al,30h
       
       mov bl,al
       int 21h
       sub al,30h
       mov ah,bl
       aad
       mov n1,al
       print str2
       mov ah,00h
       mov bh,00h
       mov al,n1
       mov bl,n1
       mul bl
       aam
       mov cl,al
       mov al,ah
       mov ah,00h
       aam
       mov bl,al
       mov dl,ah
       mov dh,00h
       add dl,30h
       mov ah,02h
       int 21h
       mov dl,bl
       add dl,30h
       int 21h
       mov dl,cl
       add dl,30h
       int 21h
       mov ah,4ch
       int 21h 	

code ends
end start
