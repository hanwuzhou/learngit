<?php
require_once("../init.php");
header("Content-Type:application/json");

$sql="select * from pc_laptop_family";
$result=mysqli_query($conn,$sql);
$data=mysqli_fetch_all($result,1);
echo json_encode($data);