<?php
header("Content-Type: text/html; charset=utf-8");
include("dataBase.php");
date_default_timezone_set("Asia/Shanghai");
     $id=$_POST['id'];
     $sql ="select * from video where id = '$id'";
    //$sql ='select * from exam_1';
//发送sql指令
        $res = mysqli_query($con,$sql);
//把拿到的资源集转化成数组
        $rows = array();
        while ($row = mysqli_fetch_assoc($res)){
            $rows[] = $row;
        }
        
        echo json_encode($rows,JSON_UNESCAPED_UNICODE|JSON_PRETTY_PRINT);

?>