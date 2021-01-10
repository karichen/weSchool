package com.chk.pojo;


import org.springframework.stereotype.Component;

@Component("Exam")
public class Exam {
    Integer id;
    String name;
    String imageurl;
    String groupd;
    String qrcode;
    String kind;

    public Exam( ) {

    }

    public Exam( String kind) {
        this.kind = kind;
    }

    public Exam(String groupd, String qrcode, String name) {
        this.groupd = groupd;
        this.qrcode = qrcode;
        this.name = name;
    }

    public Exam(Integer id, String name, String imgUrl, String groupd, String qrcode, String kind) {
        this.id = id;
        this.name = name;
        this.imageurl = imgUrl;
        this.groupd = groupd;
        this.qrcode = qrcode;
        this.kind = kind;
    }

    public Exam(String name, String imageurl, String groupd, String qrcode, String kind) {
        this.name = name;
        this.imageurl = imageurl;
        this.groupd = groupd;
        this.qrcode = qrcode;
        this.kind = kind;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImageurl() {
        return imageurl;
    }

    public void setImageurl(String imageurl) {
        this.imageurl = imageurl;
    }

    public String getGroupd() {
        return groupd;
    }

    public void setGroupd(String groupd) {
        this.groupd = groupd;
    }

    public String getQrcode() {
        return qrcode;
    }

    public void setQrcode(String qrcode) {
        this.qrcode = qrcode;
    }

    public String getKind() {
        return kind;
    }

    public void setKind(String kind) {
        this.kind = kind;
    }

    @Override
    public String toString() {
        return "Exam{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", imgUrl='" + imageurl + '\'' +
                ", groupd='" + groupd + '\'' +
                ", qrcode='" + qrcode + '\'' +
                ", kind='" + kind + '\'' +
                '}'+"\n";
    }
}
