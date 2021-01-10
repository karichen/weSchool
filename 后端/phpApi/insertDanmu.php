<?php
header("Content-Type: text/html; charset=utf-8");
include("dataBase.php");
date_default_timezone_set("Asia/Shanghai");
        $id=$_GET["id"];
        $text=$_GET["text"];
        $color=$_GET["color"];
        $timed=$_GET["timed"];
        $videosrc=$_GET["videosrc"];
        $useropenid=$_GET["useropenid"];
        $imgUrl=$_GET["imgUrl"];
        $datetime=$_GET["datetime"];
        $nick=$_GET["nick"];
        $comment=$_GET["comment"];
        if($comment=="pcomment"){
        	$sql=" UPDATE video SET pcomment=pcomment+1 where id = '$id'";
        }elseif ($comment=="rcomment") {
        	$sql=" UPDATE video SET rcomment=rcomment+1 where id = '$id'";
        }
        mysqli_query($con,$sql);
        $sql_1="INSERT INTO  danmu (text,color,timed,videosrc,useropenid,imgUrl,datetime,nick)VALUES ('$text','$color','$timed','$videosrc',' $useropenid','$imgUrl','$datetime','$nick')";
        $res = mysqli_query($con,$sql_1);
        echo $res;
        mysqli_close($con);
?>