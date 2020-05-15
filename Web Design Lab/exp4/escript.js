function myCal(){
	var ss1,ss2,ss3,ss4,ss5,ss6;
	ss1=Number(document.getElementById("s1").value);
	ss2=Number(document.getElementById("s2").value);
	ss3=Number(document.getElementById("s3").value);
	ss4=Number(document.getElementById("s4").value);	
	ss5=Number(document.getElementById("s5").value);
	ss6=Number(document.getElementById("s6").value);
	var a,b,c,b1;
	a=(ss1+ss2+ss3+ss4+ss5+ss6);
	document.getElementById("1a").value=a;
	b=(a*100)/600;
	b1=b.toFixed(2);
	document.getElementById("1b").value=b1;
	if(b>=80){
		c="A";
		document.getElementById("1c").value=c;	
	}else if(b>=60 && b<80){
		c="B";
		document.getElementById("1c").value=c;
	}else if(b>=40 && b<60){
		c="C";
		document.getElementById("1c").value=c;
	}else{
		c="FAIL";
		document.getElementById("1c").value=c;
}
}	