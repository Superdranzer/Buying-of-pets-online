<?php
$con=mysqli_connect('localhost','root','');
mysqli_select_db($con, 'securityattack');

$data=$_REQUEST['data'];

$data= htmlentities($data);

$sql="INSERT into `xss` (chat) values('$data')";
mysqli_query($con,$sql);

header('location:success.php');
?>