<html>
<head>
<title>XSS Attack</title>
<center><h2>Chat Box</h2></center>
<script type="text/javascript">
function submit() {
    var x=document.getElementById('area').value;
    window.location = "submit.php?data="+x;
}
</script>
</head>
<body>
<div style="margin: auto; border: 1px solid; width: 98%; height: 90%; border-radius: 5px;">
<br />
<?php
$con=mysqli_connect('localhost','root','');
mysqli_select_db($con,'securityattack');

$sql="SELECT * from `xss`";
$result=mysqli_query($con,$sql);
if(mysqli_num_rows($result)>0)
{
    echo "<p style='margin-left: 10px;'><b>Comments</b></p><hr />";
    while($row=mysqli_fetch_array($result))
    {
        echo "<p style='margin-left: 10px;'>".$row['chat']."</p>";
        echo "<hr />";
    }
}
else
{
    echo "<p style='margin-left: 10px;'><b>No Comments</b></p>";
}
?>
<br />
<textarea id="area" name="area" class="name" style="width:50%;height:10%;resize: none; margin-left:10px;margin-bottom:10px;"></textarea><br />
<button style="margin-left:10px;" onclick="submit();">Enter</button>
</div>
</body>
</html>