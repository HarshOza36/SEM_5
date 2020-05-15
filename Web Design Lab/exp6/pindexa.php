<html>
<head><title>Exp6a</title>
<style>
		div {
  			width: 300px;
  			border: 15px solid yellow;
  			padding: 50px;
  			margin: 20px;
			margin-right: 50px;
		}
</style>
</head>
<body bgcolor='cyan'>
<div>
<h3>
<?php
$n1=$_POST['n1'];
$n2=$_POST['n2'];
$flag=0;
echo("Prime Numbers between ".$n1." and ".$n2." are>>>>"."<br>");
function primeCheck($number){ 
    if ($number == 1) 
    return 0; 
    for ($i = 2; $i <= $number/2; $i++){ 
        if ($number % $i == 0) 
            return 0; 
    } 
    return 1; 
}
for($i=$n1;$i<=$n2;$i++){
	if(primeCheck($i)==1){
		echo($i."<br>");	
	}	
}	

?>
</h3></div>
</body>
</html>
	