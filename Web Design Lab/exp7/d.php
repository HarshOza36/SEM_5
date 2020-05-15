<html>
<body bgcolor="#FFF68F">
<?php
$c=mysqli_connect("localhost","root") or die(mysqli_error());
echo("Database Connected"."<br>");
$db="prod_det";
mysqli_select_db($c,$db) or die(mysqli_error());
echo("db connected"."<br>");
$query="select * from product;";
$result=mysqli_query($c,$query);
?>
<table>
	<tr>
		<td>Product ID</td>
		<td>Product Name</td>
		<td>Product PRICE</td>
		<td>Product Description</td>
	<tr>
<?php
	while($rows=mysqli_fetch_assoc($result))
	{
?>	
	<tr>	
		<td><?php 
		echo ($rows['p_id']);
		?>
		</td>
		<td><?php 
		echo ($rows['p_nm']);
		?>
		</td>
		<td><?php 
		echo ($rows['p_price']);
		?>
		</td>
		<td><?php 
		echo ($rows['p_desc']);
		?>
		</td>				
	</tr>
<?php
	}
?>
</table>
</body>
</html>