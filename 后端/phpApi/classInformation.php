<?php
header("Content-Type: text/html; charset=utf-8");
include("dataBase.php");
date_default_timezone_set("Asia/Shanghai");
     $openid=$_GET['openid'];
     $sql ="select * from student where openid= '$openid' "; 
     $res=mysqli_query($con,$sql);
     $rows = array();
     while ($row = mysqli_fetch_assoc($res)){
            $rows[] = $row;
        }
        
        echo json_encode($rows,JSON_UNESCAPED_UNICODE|JSON_PRETTY_PRINT);

?>