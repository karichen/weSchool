package com.chk.pojo;

import org.springframework.stereotype.Component;

@Component("Danmu")
public class Danmu {
    Integer id;
    String text;
    String color;
    String timed;
    String videosrc;
    String useropenid;
    String imgUrl;
    String datetime;
    String nick;

    public Danmu() {
    }

    public Danmu(Integer id, String text, String color, String timed, String videosrc, String useropenid, String imgUrl, String datetime, String nick) {
        this.id = id;
        this.text = text;
        this.color = color;
        this.timed = timed;
        this.videosrc = videosrc;
        this.useropenid = useropenid;
        this.imgUrl = imgUrl;
        this.datetime = datetime;
        this.nick = nick;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getTimed() {
        return timed;
    }

    public void setTimed(String timed) {
        this.timed = timed;
    }

    public String getVideosrc() {
        return videosrc;
    }

    public void setVideosrc(String videosrc) {
        this.videosrc = videosrc;
    }

    public String getUseropenid() {
        return useropenid;
    }

    public void setUseropenid(String useropenid) {
        this.useropenid = useropenid;
    }

    public String getImgUrl() {
        return imgUrl;
    }

    public void setImgUrl(String imgUrl) {
        this.imgUrl = imgUrl;
    }

    public String getDatetime() {
        return datetime;
    }

    public void setDatetime(String datetime) {
        this.datetime = datetime;
    }

    public String getNick() {
        return nick;
    }

    public void setNick(String nick) {
        this.nick = nick;
    }

    @Override
    public String toString() {
        return "Danmu{" +
                "id=" + id +
                ", text='" + text + '\'' +
                ", color='" + color + '\'' +
                ", timed='" + timed + '\'' +
                ", videosrc='" + videosrc + '\'' +
                ", useropenid='" + useropenid + '\'' +
                ", imgUrl='" + imgUrl + '\'' +
                ", datetime='" + datetime + '\'' +
                ", nick='" + nick + '\'' +
                '}'+"\n";
    }
}
