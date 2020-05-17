assume cs:code,ds:data
data segment
num1 dw 4444h
num2 dw 0002h
d dw 2 dup(?)
data ends

code segment
start: mov ax,data
       mov ds, ax
       mov ax,num1
       mov bx,num2
       div bx
       int 3
code ends
end start
