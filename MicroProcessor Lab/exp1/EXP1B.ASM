data segment
  msg db 'hello$'
data ends
code segment

assume Cs:Code, ds:data
start:
mov ax,data
mov ds,ax
mov ah,09h
mov dx,offset msg
Int 21h
mov ah,4ch
mov al,00
Int 21h

end start
code Ends
