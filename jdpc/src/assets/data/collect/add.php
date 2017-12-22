<?php
/**
* 添加到购物车
*/
header('Content-Type: application/json;charset=UTF-8');
require_once('../init.php');
@$pid = $_REQUEST['lid'] or die('{"code":401,"msg":"lid required"}');


session_start();
if(! @$_SESSION['loginUid']){
  $_SESSION['toBuyLid'] = $pid;
  die('{"code":300, "msg":"login required"}');
}

$sql = "SELECT cid FROM pc_collect WHERE user_id=$_SESSION[loginUid] AND product_id=$pid";
$result = mysqli_query($conn, $sql);
$row=mysqli_fetch_row($result);
if($row){
  echo '{"code":400,"msg":"产品已收藏！"}';
}else {
  $sql = "INSERT INTO pc_collect VALUES(NULL, $_SESSION[loginUid], $pid,true)";
  $result = mysqli_query($conn, $sql);
    if($result){
    echo '{"code":200, "msg":"add succ"}';
    }else {
    echo '{"code":500, "msg":"add err"}';
    }
}

