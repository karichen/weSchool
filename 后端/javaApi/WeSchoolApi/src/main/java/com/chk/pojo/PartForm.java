package com.chk.pojo;

import org.springframework.stereotype.Component;

@Component
public class PartForm {
    Integer id;
    String activer_openid;
    String name;
    String college;
    String gender;
    String phone;
    String QQ;
    String reamrk;

    public PartForm() {
    }

    public PartForm(Integer id, String activer_openid, String name, String college, String gender, String phone, String QQ, String reamrk) {
        this.id = id;
        this.activer_openid = activer_openid;
        this.name = name;
        this.college = college;
        this.gender = gender;
        this.phone = phone;
        this.QQ = QQ;
        this.reamrk = reamrk;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getActiver_openid() {
        return activer_openid;
    }

    public void setActiver_openid(String activer_openid) {
        this.activer_openid = activer_openid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCollege() {
        return college;
    }

    public void setCollege(String college) {
        this.college = college;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getQQ() {
        return QQ;
    }

    public void setQQ(String QQ) {
        this.QQ = QQ;
    }

    public String getReamrk() {
        return reamrk;
    }

    public void setReamrk(String reamrk) {
        this.reamrk = reamrk;
    }

    @Override
    public String toString() {
        return "PartForm{" +
                "id=" + id +
                ", activer_openid='" + activer_openid + '\'' +
                ", name='" + name + '\'' +
                ", college='" + college + '\'' +
                ", gender='" + gender + '\'' +
                ", phone='" + phone + '\'' +
                ", QQ='" + QQ + '\'' +
                ", reamrk='" + reamrk + '\'' +
                '}'+"\n";
    }
}
