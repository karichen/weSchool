
<?php

    include("dataBase.php");
    $code = $_GET['code'];//小程序传来的code值
    $appid="1110162681";
    $secret="V6ShlvdC2bMaWLbI";
    $url = 'https://api.q.qq.com/sns/jscode2session?appid='.$appid.'&secret='.$secret.'&js_code=' . $code . '&grant_type=authorization_code';
    //yourAppid为开发者appid.appSecret为开发者的appsecret,都可以从微信公众平台获取；
    $info = file_get_contents($url);//发送HTTPs请求并获取返回的数据，推荐使用curl
    $json = json_decode($info);//对json数据解码
    $arr = get_object_vars($json);
    $openid = $arr['openid'];
    $session_key = $arr['session_key'];
    echo$openid;
?>
