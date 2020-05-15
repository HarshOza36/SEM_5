<html>
<body bgcolor="#FFF68F">
<?php
$id=$_POST['id'];
$pr=$_POST['pr'];
$c=mysqli_connect("localhost","root") or die(mysqli_error());
echo("Database Connected"."<br>");
$db="prod_det";
mysqli_select_db($c,$db) or die(mysqli_error());
echo("db connected"."<br>");
$query="update product set p_price='$pr' where p_id='$id';";
mysqli_query($c,$query);
mysqli_commit($c);
mysqli_close($c);
echo("Data Updated");
?>
</body>
</html>