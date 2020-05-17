#include<stdio.h>
#include<conio.h>
void main()
{	int x,y,d,a=1;
	clrscr();
	printf("Enter X:");
	scanf("%d",&x);
	printf("Enter Y in x^:y");
	scanf("%d",&y);
	asm{
		mov cx,y;
		mov ax,a;
	}
l1:	asm{
		mul x;
		loop l1;
		mov d,ax;
	}
	printf("\n%d ^ %d is %d",x,y,d);
	getch();
}