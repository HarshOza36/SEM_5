#include<stdio.h>
#include<conio.h>
void main()
{      /*equation is a=b*c/d;
	int a,b=4,c=5,d=10; //4*5=20...20/10=2 so a shld be 2
	clrscr();
	asm{
		mov ax,b;
		mov bx,c;
		mov cx,d;
		mul bx;
		div cx;
		mov a,ax;
	}
	printf("The ans for a=b*c/d is:%d",a);*/

	/*//equation is (a+b)*(c-d);
	int a=2,b=3,c=5,d=3; //2+3=5...5-3=2 so output shld be 5*2=10
	clrscr();
	asm{
		mov ax,a;
		mov bx,b;
		mov cx,c;
		add ax,bx;
		mov bx,d;
		sub cx,bx;
		mul cx;
		mov a,ax;
	}
	printf("The ans for (a+b)*(c-d) is:%d",a);*/

	/*//equation is c=(f-32)*5/9;
	int a,b=100,c=32,d=5,e=9; //100-32= 68...68*5/9=37.778 that is a
	clrscr();
	asm{    mov ax,b;
		mov bx,c;
		mov cx,d;
		sub ax,bx
		mul cx;
		xor bx,bx;
		mov bx,e;
		div bx;
		mov a,ax;
	}
	printf("The ans for F->C is: %d",a);*/

       /*	//equation is area of trainge that is 0.5 *b*h;
	int b,h,a,d=2;
	clrscr();
	printf("ENter Base");
	scanf("%d",&b);
	printf("ENter HEight");
	scanf("%d",&h);

	asm{
		mov ax,b;
		mov bx,h;
		mul bx;
		mov a,ax;
		mov cx,d;
		div cx;
		mov a,ax;
	}
	printf("The area of triangle 0.5*%d*%d is %d",b,h,a); */

       /*	//equation is r=b*b-4*a*c;
	int a=3,b=4,c=2,d=4,e,f; //4*4=16...16-4*3*2=16-(24)=-8 that is d
	clrscr();
	asm{
		mov ax,b;
		mov bx,a;
		mov cx,c;
		mul ax;//b square done
		mov f,ax;//saving in f
		xor ax,ax;
		mov ax,d;
		mul bx;
		mul cx;
		xor bx,bx;
		mov bx,f;
		sub bx,ax;
		mov e,bx;
	}
	printf("The ans:%d",e); */

	/*//equation is a-b*c+d using bodmas
	int a=30,b=5,c=4,d=3,e;    //ans shld be 5*4=20..20+3=23....30-23=7
	clrscr();
	asm{
		mov ax,b;
		mov bx,c;
		mov cx,d;
		mul bx;
		add ax,cx;
		xor bx,bx;
		mov bx,a;
		sub bx,ax
		mov e,bx;
	}
	printf("The ans using bodmas for a-b*c+d is:%d",e); */

	/*//equation is total salary=basic+da+hra-tax da=50% of basic
	// hra is 5% of basic tax is 10% of basic
	// 50/100=1/2....5/100=1/20 20 in hex is14...10/100 is 1/10 and 10 in hex is A
	int a,b=5000,da,hra,tax,total;//let basic pay=5000
	clrscr();
	asm{
		mov ax,b;
		mov bx,0x02;
		div bx;
		mov cx,b;
		sub cx,ax;
		mov da,cx;//da stored
		xor ax,ax;
		xor bx,bx;
		xor cx,cx;
		mov ax,b;
		mov bx,0x14;
		div bx;
		mov cx,b;
		sub cx,ax;
		mov hra,cx;//hra stored
		xor ax,ax;
		xor bx,bx;
		xor cx,cx;
		mov ax,b;
		mov bx,0x0A;
		div bx;
		mov cx,b;
		sub cx,ax;
		mov tax,cx;//tax stored
		xor ax,ax;
		xor bx,bx;
		xor cx,cx;
		mov ax,b;
		mov bx,da;
		mov cx,hra;
		add ax,bx;
		add ax,cx;
		xor bx,bx;
		mov bx,tax;
		sub ax,tax;
		mov a,ax;//all done
	}
	printf("The  DA is %d ,HRA is %d,TAX is %d\n",da,hra,tax);
	printf("Total is %d",a); */

	/*//equation is area of circe that is 3.14*r*r;
	int a,r,p=22,i=7,pi;
	clrscr();
	printf("ENter Radius");
	scanf("%d",&r);
	asm{
		mov ax,p;
		mov bx,i;
		div bx;
		mov pi,ax;//save pi calculated
		xor ax,ax;
		xor bx,bx;
		mov ax,r;
		mov bx,pi;
		mul ax;
		mul bx;
		mov a,ax;
	}
	printf("The area of circle with PI:%d is %d",pi,a);*/

	//equation is surface area of sphere that is 4*3.14*r*r;
	int a,r,p=22,i=7,pi;
	clrscr();
	printf("ENter Radius");
	scanf("%d",&r);
	asm{
		mov ax,p;
		mov bx,i;
		div bx;
		mov pi,ax;//save pi calculated
		xor ax,ax;
		xor bx,bx;
		mov ax,r;
		mov bx,pi;
		mul ax;
		mul bx;
		mov cx,0x0004;
		mul cx;
		mov a,ax;
	}
	printf("The surface area of sphere with PI: %d is %d",pi,a);
	getch();
}