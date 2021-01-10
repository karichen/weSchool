<?php
header("Content-Type: text/html; charset=utf-8");
include("dataBase.php");
date_default_timezone_set("Asia/Shanghai");
$openid=$_GET['openid'];
 $sql1 = "select register from user where openid = '$openid'";
 $res = mysqli_query($con, $sql1);
 while($row = mysqli_fetch_array($res))
  {
            $register=$row['register'];
            
  }
  if($register=="no"){
  	$flag=0;//0没有验证
  	 echo $flag;
  	mysqli_close($con);
  }else if($register=="yes") {
  		$flag=1;//1 验证了
  		 echo $flag;
  	mysqli_close($con);
  }

            

 


?>