#include<stdio.h>
#include<conio.h>	
void main(){
	int a[10],n,b,i;
	clrscr();
	printf("Enter the number of values:");
	scanf("%d",&n);
	printf("Enter the numbers:");
	for(i=0;i<n;i++){
		scanf("%d",&a[i]);
	}
	asm{
	lea si,a;
	mov cx,n;
	xor ax,ax;
	xor bx,bx;
	}
l1:	asm{
	mov bx,[si];
	add ax,bx;
	add si,0x0002;
	loop l1;
	mov bx,n;
	div bx;
	mov b,ax;
	}
	printf("The average is %d",b);
	getch();
}