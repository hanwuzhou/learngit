<?php
/**
* 接收客户端
*/
header('Content-Type: application/json;charset=UTF-8');
require_once('../init.php');

@$uname = $_REQUEST['uname'] ;
@$upwd = $_REQUEST['upwd'] ;
@$email = $_REQUEST['email'];
@$phone = $_REQUEST['phone'];

  $nPattern='/[0-9a-z]{6,8}/';
	$uPattern='/[0-9a-z]{6,8}/';
	$ePattern='/^\d*@\w*.\w*$/';
	$pPattern='/^((\+86|0086)\s)?1[34578]\d{9}$/';

	if(!preg_match($nPattern,$uname)){
		echo '{"code":401,"msg":"用户名格式不正确,请输入6~8位数字或字母！"}';
		exit;
	}
	if(!preg_match($uPattern,$upwd)){
		echo '{"code":402,"msg":"密码格式不正确，请输入6~8位数字或字母！"}';
		exit;
	}
	if(!preg_match($ePattern,$email)){
		echo '{"code":403,"msg":"邮箱格式不正确！"}';
		exit;
	}
	if(!preg_match($pPattern,$phone)){
		echo '{"code":404,"msg":"电话格式不正确！"}';
		exit;
	}


$sql = "INSERT INTO pc_user(uname,upwd,email,phone) VALUES('$uname',md5('$upwd'),'$email','$phone')";
$result = mysqli_query($conn,$sql);

if(!$result){
  echo('{"code":500, "msg":"db execute err"}');
}else {
  $uid = mysqli_insert_id($conn);
  echo('{"code":200, "msg":"register succ", "uid":'.$uid.'}');
}