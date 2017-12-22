<?php
header("Content-Type:application/json");

require_once("../init.php");
@$fid=$_REQUEST["fid"];
$sql="select * from pc_laptop where family_id=$fid";
$result=mysqli_query($conn,$sql);
$datas=mysqli_fetch_all($result,1);

echo json_encode($datas);