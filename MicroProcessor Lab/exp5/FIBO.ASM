print macro msg
mov ah,09h
mov dx,offset msg
int 21h
endm

data segment
fibo db 10 dup(?)
msg1 db 10,13, "Fibonacci series :",10,13, "$"
msgn1 db 10,13, "$"
data ends

code segment
assume cs:code,ds:data
start:
mov ax,data
mov ds,ax
print msg1
mov si, offset fibo
mov al,00
mov [si],al
inc si
mov bl,01
mov [si],bl
inc si
mov cl,13



next:  add al,bl
       mov [si],al
      
       mov al,bl
       mov bl,[si]
       inc si
       loop next

       

       mov ah,00
       mov si,offset fibo
       mov cl,13

back: mov al,[si]
      aam
      mov bx,ax
      add bx,3030h
      mov dl,bh
      mov ah,02h
      int 21h
      mov dl,bl
      mov ah,02
      int 21h
      print msgn1
      inc si
      loop back

 

 mov ax,4c00h
 int 21h

code ends
end start
