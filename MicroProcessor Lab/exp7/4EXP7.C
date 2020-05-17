#include<stdio.h>
#include<conio.h>
void main(){
	int a,b,c,d;
	clrscr();
	printf("Enter value of A>>");
	scanf("%d",&a);
	printf("Enter value of B>>");
	scanf("%d",&b);
	printf("Enter value of C>>");
	scanf("%d",&c);
	asm{
		mov ax,a
		mov bx,b
		mov cx,c
		add ax,bx
		add ax,cx
		mov d,ax

	}
	printf("The Addition Value is>>%d",d);
	getch();
}