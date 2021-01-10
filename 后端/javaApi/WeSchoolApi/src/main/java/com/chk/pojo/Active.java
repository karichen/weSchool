package com.chk.pojo;

import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class Active {
    Integer id;//id
    String major;//主题
    String starttime;//开始时间
    String endtime;//结束时间
    String place;//活动地点
    String salary;//所需资金
    String count;//参与人数
    String enrollment;//实际参与人数
    String remark;//备注
    Qriginator qriginator;//发起者
    List<Participant> participants;//参与人
    String imgUrl1;
    String imgUrl2;
    String imgUrl3;
    String imgUrl4;
    String fields;
    String pwdid;

    public Active() {
    }

    public Active(Integer id, String major, String starttime, String endtime, String place, String salary, String count, String remark, Qriginator qriginator,
                  List<Participant> participants, String imgUrl1, String imgUrl2, String imgUrl3, String imgUrl4,String fields,String pwdid,String enrollment) {
        this.id = id;
        this.major = major;
        this.starttime = starttime;
        this.endtime = endtime;
        this.place = place;
        this.salary = salary;
        this.count = count;
        this.remark = remark;
        this.qriginator = qriginator;
        this.participants = participants;
        this.imgUrl1 = imgUrl1;
        this.imgUrl2 = imgUrl2;
        this.imgUrl3 = imgUrl3;
        this.imgUrl4 = imgUrl4;
        this.fields=fields;
        this.pwdid=pwdid;
        this.enrollment=enrollment;
    }
    public Active(String major, String starttime, String endtime, String place, String salary, String count, String remark, Qriginator qriginator,
                  List<Participant> participants, String imgUrl1, String imgUrl2, String imgUrl3, String imgUrl4,String fields,String pwdid,String enrollment) {
        this.id = id;
        this.major = major;
        this.starttime = starttime;
        this.endtime = endtime;
        this.place = place;
        this.salary = salary;
        this.count = count;
        this.remark = remark;
        this.qriginator = qriginator;
        this.participants = participants;
        this.imgUrl1 = imgUrl1;
        this.imgUrl2 = imgUrl2;
        this.imgUrl3 = imgUrl3;
        this.imgUrl4 = imgUrl4;
        this.fields=fields;
        this.pwdid=pwdid;
        this.enrollment=enrollment;

    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    public String getStarttime() {
        return starttime;
    }

    public void setStarttime(String starttime) {
        this.starttime = starttime;
    }

    public String getEndtime() {
        return endtime;
    }

    public void setEndtime(String endtime) {
        this.endtime = endtime;
    }

    public String getPlace() {
        return place;
    }

    public void setPlace(String place) {
        this.place = place;
    }

    public String getSalary() {
        return salary;
    }

    public void setSalary(String salary) {
        this.salary = salary;
    }

    public String getCount() {
        return count;
    }

    public void setCount(String count) {
        this.count = count;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public Qriginator getQriginator() {
        return qriginator;
    }

    public void setQriginator(Qriginator qriginator) {
        this.qriginator = qriginator;
    }

    public List<Participant> getParticipants() {
        return participants;
    }

    public void setParticipants(List<Participant> participants) {
        this.participants = participants;
    }

    public String getImgUrl1() {
        return imgUrl1;
    }

    public void setImgUrl1(String imgUrl1) {
        this.imgUrl1 = imgUrl1;
    }

    public String getImgUrl2() {
        return imgUrl2;
    }

    public void setImgUrl2(String imgUrl2) {
        this.imgUrl2 = imgUrl2;
    }

    public String getImgUrl3() {
        return imgUrl3;
    }

    public void setImgUrl3(String imgUrl3) {
        this.imgUrl3 = imgUrl3;
    }

    public String getImgUrl4() {
        return imgUrl4;
    }

    public void setImgUrl4(String imgUrl4) {
        this.imgUrl4 = imgUrl4;
    }

    public String getFields() {
        return fields;
    }

    public void setFields(String fields) {
        this.fields = fields;
    }

    public String getPwdid() {
        return pwdid;
    }

    public void setPwdid(String pwdid) {
        this.pwdid = pwdid;
    }

    public String getEnrollment() {
        return enrollment;
    }

    public void setEnrollment(String enrollment) {
        this.enrollment = enrollment;
    }



    @Override
    public String toString() {
        return "Active{" +
                "id=" + id +
                ", major='" + major + '\'' +
                ", starttime='" + starttime + '\'' +
                ", endtime='" + endtime + '\'' +
                ", place='" + place + '\'' +
                ", salary='" + salary + '\'' +
                ", count='" + count + '\'' +
                ", enrollment='" + enrollment + '\'' +
                ", remark='" + remark + '\'' +
                ", qriginator=" + qriginator +
                ", participants=" + participants +
                ", imgUrl1='" + imgUrl1 + '\'' +
                ", imgUrl2='" + imgUrl2 + '\'' +
                ", imgUrl3='" + imgUrl3 + '\'' +
                ", imgUrl4='" + imgUrl4 + '\'' +
                ", fields='" + fields + '\'' +
                ", pwdid='" + pwdid + '\'' +
                '}';
    }
}
