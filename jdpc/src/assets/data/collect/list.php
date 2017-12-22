<?php
/**
* 获取当前登录用户的购物车内容
*/
header('Content-Type: application/json;charset=UTF-8');
require_once('../init.php');
session_start();
if(! @$_SESSION['loginUid']){
  die('{"code":300, "msg":"login required"}');
}

//获取总记录数
$sql = "SELECT cid,lid,title,spec,price FROM pc_laptop l, pc_collect s WHERE l.lid=s.product_id AND user_id=$_SESSION[loginUid]";
$result = mysqli_query($conn, $sql);
$list = mysqli_fetch_all($result, MYSQLI_ASSOC);
//查询每个商品的第一幅小图片
foreach($list as $i=>$p){
  $sql = "SELECT sm FROM pc_laptop_pic WHERE laptop_id=$p[lid] LIMIT 1";
  $result = mysqli_query($conn, $sql);
  $row = mysqli_fetch_row($result);
  $list[$i]['pic'] = $row[0];
}
$output = [
  'code'=>200,
  'data'=>$list
];
echo json_encode($output);