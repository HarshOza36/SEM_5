#include<stdio.h>
#include<conio.h>
void main()
{	int a=3,b=4,c=5,d;
	clrscr();
	asm{
		mov ax,a;
		mov bx,b;
		mov cx,c;
		add ax,bx;
		add ax,cx;
		mov d,ax;
	}
	printf("The addn is:%d",d);
	getch();
}