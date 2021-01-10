<?php
header("Content-Type: text/html; charset=utf-8");
include("dataBase.php");
date_default_timezone_set("Asia/Shanghai");

        $student_id=$_GET["student_id"];
        $student_name=$_GET["student_name"];
        $openid=$_GET["openid"];
        //$sql_1='select * from student where student_id='.''.$student_id.' '.'and student_name='.''.$student_name;
        $sql_1='select * from student where student_id='.''.$student_id;
        $res = mysqli_query($con,$sql_1);
       while($row = mysqli_fetch_array($res))
  {
            $name=$row['student_name'];
            $flag=$row['flag'];
  }
        // $flag=mysqli_fetch_row($res)[1];
   
       
        if($res=false||($student_name!=$name)){
        echo 2;//2代表查无此人
         mysqli_close($con);
        }else{
        	
        	  if($flag=="no"){
        	  	$flag="yes";
        	  	$sql_2="update student set flag= '$flag',openid= '$openid' where student_id='$student_id'";
        	  	  $res2 = mysqli_query($con,$sql_2);
        	  	  
        	  	  if($res2){
        	  	  	$register="yes";
        	  	     $sql_3="update user set register= '$register' where openid='$openid'";
        	  	     $res3 = mysqli_query($con,$sql_3);
        	  	     if($res3){
        	  	      echo 1;//1代表认证成功
        	  	  	    mysqli_close($con);
        	  	     }else{
        	  	     echo 0;//0代表认证失败
        	  	  	 mysqli_close($con);
        	  	     }
        	  	  	
        	  	  }else{
        	  	   echo 0;//0代表认证失败
        	  	  	 mysqli_close($con);
        	  	  	 var_dump($sql_2);
        	  	  }
        	  	
        	  }else{
        	  	  echo 3;//3代表已经认证
        	  		mysqli_close($con);
        	  }
        }
?>