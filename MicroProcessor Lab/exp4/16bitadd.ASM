assume cs:code,ds:data
data segment
num1 dw 9112h
num2 dw 9587h
sum dw 2 dup(?)
data ends

code segment
start: mov ax,data
       mov ds, ax
       mov ax,num1
       add ax,num2
       adc bx,00h
       mov sum,ax
       int 3
code ends
end start
