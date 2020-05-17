assume cs:code,ds:data
data segment
num1 dw 6BC8h
num2 dw 8989h
diff dw 2 dup(?)
data ends

code segment
start: mov ax,data
       mov ds, ax
       mov ax,num1
       sub ax,num2
       sbb bx,00h
       mov diff,ax
       int 3
code ends
end start
