<?php
header("Content-Type: text/html; charset=utf-8");
include("dataBase.php");
date_default_timezone_set("Asia/Shanghai");

        $student_id=$_GET["student_id"];
        $student_name=$_GET["student_name"];
         $student_phone=$_GET["student_phone"];
        $student_qq=$_GET["student_qq"];
        $openid=$_GET["openid"];
        
       $sql_1="select * from dianstudent where student_id='$student_id'";
        $res = mysqli_query($con,$sql_1);
        // var_dump($res);
        // var_dump($sql_1);
         $num=mysqli_num_rows($res);
       if ($num>=1){
           echo 2;//2代表用户以及报名 用户已经存在
             mysqli_close($con);
        }else{
        		$sql_2="insert into dianstudent (student_id,student_name,student_phone,student_qq,openid) values ('$student_id','$student_name','$student_phone','$student_qq','$openid')";
        	      $res2 = mysqli_query($con,$sql_2);//新增用户报名信息
        	      $sql_3="update dianstudent set flag= 'yes' where student_id='$student_id'";
                    $res3 = mysqli_query($con,$sql_3);
                     $sql_4="update user set dian= '已报名' where openid='$openid'";
                    $res4 = mysqli_query($con,$sql_4);
        	      	  echo 1; //1代表报名成功
        	      	   mysqli_close($con);
        	    
        	      
        
        	    
        	
        }
       
       
      
?>