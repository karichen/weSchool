<?php
header("Content-Type: text/html; charset=utf-8");
include("dataBase.php");
date_default_timezone_set("Asia/Shanghai");
    
     if (isset ($_GET["groupd"])) {
     	 $groupd=$_GET["groupd"];
     	 $sql ="SELECT * FROM examDetail WHERE groupd='$groupd'";
     }else if ( isset ($_GET["kind"])) {
     	 $kind=$_GET["kind"];
     	 $sql ="SELECT * FROM examThumbnail WHERE kind='$kind'";
     }else if( isset ($_GET["tkind"])){
     	 $tkind=$_GET["tkind"];
     	 $sql ="SELECT * FROM examThumbnail WHERE kind='$tkind' limit 0,5";
     }
         $res = mysqli_query($con, $sql);
//把拿到的资源集转化成数组
        $rows = array();
        while ($row = mysqli_fetch_assoc($res)){
            $rows[] = $row;
        }
        
        echo json_encode($rows,JSON_UNESCAPED_UNICODE|JSON_PRETTY_PRINT);

?>