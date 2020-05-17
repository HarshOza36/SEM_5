print macro x
   mov dx,offset x
   mov ah,09
   int 21h
endm
data segment
   str1 db 10,"Enter First Number:$"
   str2 db 10,"Enter Second Number:$"
   str3 db 10,"Difference:$"
data ends
code segment
assume cs:code,ds:data
start: mov ax,data
       mov ds,ax
       print str1
       mov ah,01h
       int 21h
       sub al,30h
       ror al,4
       mov bl,al
       int 21h
       sub al,30h
       add al,bl
       mov cl,al
       print str2
       mov ah,01h
       int 21h
       sub al,30h
       ror al,4
       mov bl,al
       int 21h
       sub al,30h
       add al,bl
       mov bl,cl
       mov cl,al
       mov al,bl
       sub al,cl
       das
       mov cl,al
       print str3
       mov dl,cl
       and dx,00f0h
       ror dl,4
       add dl,30h
       mov ah,02h
       int 21h
       mov dl,cl
       and dx,000fh
       add dl,30h
       mov ah,02h
       int 21h
       mov ah,4ch
       int 21h

code ends
end start
