package com.chk.pojo;

import org.springframework.stereotype.Component;

@Component("PreviewVideo")
public class PreviewVideo {
    Integer id;
    String src;
    String vid;
    String points;
    String comment;

    public PreviewVideo() {
    }

    public PreviewVideo(Integer id, String src, String vid, String points, String comment) {
        this.id = id;
        this.src = src;
        this.vid = vid;
        this.points = points;
        this.comment = comment;
    }

    public PreviewVideo(String src, String vid, String points, String comment) {
        this.src = src;
        this.vid = vid;
        this.points = points;
        this.comment = comment;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getSrc() {
        return src;
    }

    public void setSrc(String src) {
        this.src = src;
    }

    public String getVid() {
        return vid;
    }

    public void setVid(String vid) {
        this.vid = vid;
    }

    public String getPoints() {
        return points;
    }

    public void setPoints(String points) {
        this.points = points;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    @Override
    public String toString() {
        return "PreviewVideo{" +
                "id=" + id +
                ", src='" + src + '\'' +
                ", vid='" + vid + '\'' +
                ", points='" + points + '\'' +
                ", comment='" + comment + '\'' +
                '}'+"\n";
    }
}
