#include<stdio.h>
#include<conio.h>
void main()
{	int a=3,b=4,d;
	clrscr();
	asm{
		mov ax,a;
		mov bx,b;
		cmp ax,bx;
		jc l;
	}
l: 	asm{
		mov bx,ax;
		mov d,bx
	}
	printf("The smallest is :%d",d);
	getch();
}