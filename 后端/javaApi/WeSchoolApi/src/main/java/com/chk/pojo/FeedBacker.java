package com.chk.pojo;

import org.springframework.stereotype.Component;

@Component
public class FeedBacker extends Quser {
    String name;
    String phone;
    String QQ;
    String wx;
    String feed_back;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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

    public String getWx() {
        return wx;
    }

    public void setWx(String wx) {
        this.wx = wx;
    }

    public String getFeed_back() {
        return feed_back;
    }

    public void setFeed_back(String feed_back) {
        this.feed_back = feed_back;
    }
}
