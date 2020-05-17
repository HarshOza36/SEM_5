#include<stdio.h>
#include<conio.h>
void main()
{	int a=3,b=4,c,d;
	clrscr();
	printf("Before swapping A=3,B=4\n");
	asm{
		mov ax,a;
		mov bx,b;
		xchg ax,b;
		xchg bx,a;
		mov c,ax;
		mov d,bx;
	}
	printf("After Swapping A=%d B=%d",c,d);
	getch();
}