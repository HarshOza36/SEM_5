print macro x
        mov dx,offset x
        mov ah,09h
        int 21h
endm
data segment
    str1 db 10,'enter ist no. $'
    str2 db 10,'enter 2nd no. $'
    str3 db 10,'mul is $'
    n1 db ?
    n2 db ?
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
       mov ah,01h
       int 21h
       sub al,30h
       mov bl,al
       int 21h
       sub al,30h
       mov ah,bl
       aad
       mov n2,al
       print str3
       mov al,n1
       mov bl,n2
       mul bl
       aam
       mov cl, al
       mov al,ah
       mov ah,00h
       aam
       mov bl,al
       mov dl,ah
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


