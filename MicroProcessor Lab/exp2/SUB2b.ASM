data segment
   num1 db 28h
   num2 db 16h
   result db ?
   ends
code segment
assume ds:data, cs:code
start:
 mov ax,data
 mov ds,ax
 mov al,num1
 sub al,num2
 mov result,al
 mov ah,00h
 mov ax,02ffh
 AAS
 mov ah,4ch
 int 21h
code ends
end start
