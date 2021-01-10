package com.chk.pojo;

import org.springframework.stereotype.Component;

@Component
public class Participant {
    Integer id;
    String infoList;
    String openid;
    String pwdid;
    Integer showflag;

    public Participant() {
    }

    public Participant(Integer id, String infoList, String openid, String pwdid, Integer showflag) {
        this.id = id;
        this.infoList = infoList;
        this.openid = openid;
        this.pwdid = pwdid;
        this.showflag = showflag;
    }

    public Participant(String infoList, String openid, String pwdid, Integer showflag) {
        this.infoList = infoList;
        this.openid = openid;
        this.pwdid = pwdid;
        this.showflag = showflag;
    }

    public Participant(String infoList, String openid, String pwdid) {
        this.infoList = infoList;
        this.openid = openid;
        this.pwdid = pwdid;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getInfoList() {
        return infoList;
    }

    public void setInfoList(String infoList) {
        this.infoList = infoList;
    }

    public String getOpenid() {
        return openid;
    }

    public void setOpenid(String openid) {
        this.openid = openid;
    }

    public String getPwdid() {
        return pwdid;
    }

    public void setPwdid(String pwdid) {
        this.pwdid = pwdid;
    }

    public Integer getShowflag() {
        return showflag;
    }

    public void setShowflag(Integer showflag) {
        this.showflag = showflag;
    }

    @Override
    public String toString() {
        return "Participant{" +
                "id=" + id +
                ", infoList='" + infoList + '\n' +
                ", openid='" + openid + '\n' +
                ", pwdid='" + pwdid + '\n' +
                ", showflag=" + showflag +
                '}';
    }
}
