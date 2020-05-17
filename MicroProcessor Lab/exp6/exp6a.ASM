data segment
array db 2,8,9,5,7
data ends
code segment
start: assume cs:code, ds:data
mov ax,data
mov ds,ax
mov cx,5
mov di,0
sub al,al

big: cmp al,array[di]
     ja next
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
