<?php
header("Content-Type: text/html; charset=utf-8");
include("dataBase.php");
date_default_timezone_set("Asia/Shanghai");

        $student_id=$_GET["student_id"];
        $student_name=$_GET["student_name"];
         $student_phone=$_GET["student_phone"];
        $student_qq=$_GET["student_qq"];
        $openid=$_GET["openid"];
         $feed_back=$_GET["feed_back"];
        
       
        $sql="insert into feedback (student_id,student_name,student_phone,student_qq,openid,feed_back) values ('$student_id','$student_name','$student_phone','$student_qq','$openid','$feed_back')";
        	      $res = mysqli_query($con,$sql);//新增用户报名信息
        	      echo $res; //1代表报名成功
        	      mysqli_close($con);
        	    
        	      
        
        	    
        	
      
       
       
      
?>