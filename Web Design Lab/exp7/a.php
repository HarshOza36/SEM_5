<html>
<body bgcolor="#FFF68F">
<?php
$id=$_POST['id'];
$nm=$_POST['nm'];
$pr=$_POST['pr'];
$dc=$_POST['dc'];
$c=mysqli_connect("localhost","root") or die(mysqli_error());
echo("Database Connected"."<br>");
$db="prod_det";
mysqli_select_db($c,$db) or die(mysqli_error());
echo("db connected"."<br>");
$query="insert into product(p_id,p_nm,p_price,p_desc) values('$id','$nm','$pr','$dc');";
mysqli_query($c,$query);
mysqli_commit($c);
mysqli_close($c);
echo("Data Inserted");
?>
</body>
</html>