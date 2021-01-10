package com.chk.util;

import com.alibaba.fastjson.JSON;
import org.springframework.stereotype.Component;

import java.util.HashMap;
import java.util.Map;

@Component
public class GetOpenid {

    public GetOpenid() {
    }


    public String getOpenId(String appid,String secret,String code,String grant_type ){
        // 登录凭证不能为空
        if (code == null || code.length() == 0) {
            return "0";
        }

        Map params = new HashMap();
        // 授权（必填）
        params.put("grant_type",grant_type);
        //小程序生命周期初始的code
        params.put("js_code",code);
        // 小程序的 app secret (在微信小程序管理后台获取)
        params.put("secret",secret);
        // 小程序唯一标识 (在微信小程序管理后台获取)
        params.put("appid",appid);
        HttpUtils httpUtils=new HttpUtils();
        String  res =  httpUtils.sendGet("https://api.weixin.qq.com/sns/jscode2session",params);
        System.out.println(res);
        Map resmap = new HashMap();
        resmap = JSON.parseObject(res);
        System.out.println(resmap.get("openid"));
        String openId = (String) resmap.get("openid");
        System.out.println(params);
        return openId;
    }




}
