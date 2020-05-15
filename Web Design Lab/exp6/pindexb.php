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
		function fact($n){
			if($n>=1)
				return (($n)*fact($n-1));
			else
				return 1;
		}
		echo("The factorial of ".$n1." is:<br>");
		echo(fact($n1));	
?>
</h3></div>
</body>
</html>