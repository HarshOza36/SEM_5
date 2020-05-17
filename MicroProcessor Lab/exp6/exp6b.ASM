data segment
array db 7,8,9,5,2
data ends
code segment
start: assume cs:code, ds:data
mov ax,data
mov ds,ax
mov cx,5
mov di,0
mov al,9
big: cmp al,array[di]
     jnge next
     mov al,array[di]
next: inc di
      loop big
      mov ah,2
      add al,30h
      xor dx,dx

      mov dl,al
      int 21h
      mov ah,4ch
      int 21h
code ends
end start
