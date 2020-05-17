#include<stdio.h>
#include<conio.h>
void main()
{	int a[10],b,c=2,s=0,i;
	clrscr();
	printf("Enter the decimal:");
	scanf("%d",&b);
	for(i=0;i<10;i++){
		a[i]=8;
	}
	asm{
		lea si,a;
		mov ax,b;
		xor cx,cx;
		xor dx,dx;
		mov bx,c;
	}
l1:	asm{
		div bx;
		mov [si],dx;
		add si,0x0002;
		xor dx,dx;
		cmp ax,s;
		jne l1;
	}
	printf("Binary = ");
	for(i=10;i>=0;i--){
		if(a[i]!=8){
			printf("%d",a[i]);
		}
	}
	getch();
}