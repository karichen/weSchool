<?php

    include("dataBase.php");
    $code = $_GET['code'];//小程序传来的code值
    $appid="wx754557592dbb0410";
    $secret="68d25fd9bf5b63cf144e0889bfe34222";
    $url = 'https://api.wx.qq.com/sns/jscode2session?appid='.$appid.'&secret='.$secret.'&js_code=' . $code . '&grant_type=authorization_code';
       $info = file_get_contents($url);
    $json = json_decode($info);
    $arr = get_object_vars($json);
    $openid = $arr['openid'];
    $session_key = $arr['session_key'];
    echo$openid;
?>