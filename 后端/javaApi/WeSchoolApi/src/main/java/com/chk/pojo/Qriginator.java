package com.chk.pojo;

import org.springframework.stereotype.Component;

@Component
public class Qriginator extends Quser {
    String phone;
    String QQ;

    public Qriginator() {

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

    @Override
    public String toString() {
        return "Qriginator{" +
                "phone='" + phone + '\'' +
                ", QQ='" + QQ + '\'' +
                ", id=" + id +
                ", openid='" + openid + '\'' +
                ", userNick='" + userNick + '\'' +
                ", avaUrl='" + avaUrl + '\'' +
                ", gender='" + gender + '\'' +
                '}'+"\n";
    }
}
