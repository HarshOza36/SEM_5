data segment
n1 db 01h
n2 db 04h
data ends

code segment
assume cs:code, ds:data
start:

mov ax,data
mov ds,ax

mov al,n1
mov bl,n2
add al,bl

add al,04h
mov dl,al

mov ah,30h
int 21h

end start
code Ends
