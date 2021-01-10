package com.chk.pojo;

import org.springframework.stereotype.Component;

@Component()
public class Quser {
    Integer id;
    String openid;
    String userNick;
    String  avaUrl;
    String gender;

    public Quser() {
    }

    public Quser(Integer id, String openid, String userNick, String avaUrl, String gender) {
        this.id = id;
        this.openid = openid;
        this.userNick = userNick;
        this.avaUrl = avaUrl;
        this.gender = gender;
    }

    public Quser(String openid, String userNick, String avaUrl, String gender) {
        this.openid = openid;
        this.userNick = userNick;
        this.avaUrl = avaUrl;
        this.gender = gender;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getOpenid() {
        return openid;
    }

    public void setOpenid(String openid) {
        this.openid = openid;
    }

    public String getUserNick() {
        return userNick;
    }

    public void setUserNick(String userNick) {
        this.userNick = userNick;
    }

    public String getAvaUrl() {
        return avaUrl;
    }

    public void setAvaUrl(String avaUrl) {
        this.avaUrl = avaUrl;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }


    @Override
    public String toString() {
        return "Quser{" +
                "id=" + id +
                ", openid='" + openid + '\'' +
                ", userNick='" + userNick + '\'' +
                ", avaUrl='" + avaUrl + '\'' +
                ", gender='" + gender + '\'' +
                '}'+"\n";
    }
}
