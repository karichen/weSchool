<?php
header("Content-Type: text/html; charset=utf-8");
include("dataBase.php");
date_default_timezone_set("Asia/Shanghai");
        $videosrc=$_GET["videosrc"];
        $sql_1="SELECT * FROM danmu where videosrc='$videosrc' order by id desc ";
        $rs = mysqli_query($con,$sql_1);
        $res = array();
        $i = 0;
     //通过遍历获取$rs语句取出的内容，将其存入数组中
      while( $row = mysqli_fetch_assoc($rs))
    {
    $res[$i]['text']=$row['text'];
    $res[$i]['color']=$row['color'];
    $res[$i]['timed']=$row['timed'];
    $res[$i]['imgUrl']=$row['imgUrl'];
    $res[$i]['datetime']=$row['datetime'];
    $res[$i]['nick']=$row['nick'];
    $i++;
   };
   $i--;

   //将数据数组封装为json格式，用于js的接收
   $res = json_encode($res);
   echo $res;
    mysqli_close($con);
 ?>