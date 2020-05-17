#include<stdio.h>
#include<conio.h>
void main()        //lcm
{	int a=10,b=15,c,d;
	clrscr();
	asm{
		mov ax,a;
		mov bx,b;
		jmp l1;
	}
l1:	asm{
		cmp ax,bx;
		jne l2;
		je l5;
	}
l2:	asm{
		cmp ax,bx;
		jg l3;
		jb l4;
	}
l3:	asm{
		sub ax,bx;
		jmp l1;
	}
l4:	asm{
		sub bx,ax;
		jmp l1;
	}
l5:	asm{    mov c,ax;
		xor ax,ax;
		mov ax,a
		mov bx,b;
		mul bx;
		xor bx,bx;
		mov bx,c;
		div bx;
		mov d,ax;

	}
	printf("The LCM of %d and %d is %d",a,b,d	);
	getch();
}