#include<stdio.h>
#include<conio.h>
void main(){
	int i,a[10],n;
	clrscr();
	printf("Enter value of N maximum 10>>");
	scanf("%d",&n);
	for(i=0;i<n<i++){
		printf("Enter the value for N%d",i);
		scanf("%d",&a[i]);
	}

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