<?php
header("Content-Type: text/html; charset=utf-8");
include("dataBase.php");
date_default_timezone_set("Asia/Shanghai");
     $exam_id=$_GET['exam_id'];
     $exam_form='exam_'.$exam_id;
     $sql ='select * from'.' '.$exam_form.' '.'WHERE id >= ( SELECT floor(RAND() * (SELECT MAX(id)  from'.' '.$exam_form.' '.'))) ORDER BY id LIMIT 10';
     
     
   //  $sql="SELECT * FROM '$exam_form' WHERE id >= ( SELECT floor(RAND() * (SELECT MAX(id) FROM '$exam_form'))) ORDER BY id LIMIT 10";
//发送sql指令
       // $sql ="select * from '$exam_form'";
         $res = mysqli_query($con, $sql);
//把拿到的资源集转化成数组
        $rows = array();
        while ($row = mysqli_fetch_assoc($res)){
            $rows[] = $row;
        }
        
        echo json_encode($rows,JSON_UNESCAPED_UNICODE|JSON_PRETTY_PRINT);

?>