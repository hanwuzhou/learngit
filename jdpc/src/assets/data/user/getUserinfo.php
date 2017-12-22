<?php

header('Content-Type: application/json;charset=UTF-8');
require_once('../init.php');
session_start();
@$uid=$_SESSION['loginUid'];
$sql="select upwd,uname,avatar from pc_user where uid=$uid";
$result=mysqli_query($conn,$sql);
$row=mysqli_fetch_row($result);
echo '{"uname":"'.$row[1].'","pic":"'.$row[2].'","upwd":"'.$row[0].'"}';