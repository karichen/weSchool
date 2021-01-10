<?php
header("Content-Type: text/html; charset=utf-8");
include("dataBase.php");
date_default_timezone_set("Asia/Shanghai");
        $id=$_GET["id"];
        $points=$_GET["points"];
        if($points=='ppoints'){
              $sql_1=" UPDATE video SET ppoints=ppoints+1 where id = '$id'";
        }else if($points=='rpoints') {
               $sql_1=" UPDATE video SET rpoints=rpoints+1 where id = '$id'";
        }
        $rs = mysqli_query($con,$sql_1); ;
     echo $sql_1;
    mysqli_close($con);
 ?>