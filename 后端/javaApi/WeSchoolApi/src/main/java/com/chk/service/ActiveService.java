package com.chk.service;

import com.chk.pojo.Active;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface ActiveService {
    public Integer addActive(Active active,String pwdid);
    public Integer updateActiveImgUrls(String pwdid,String imgUrlname,String urlid);
    public Active queryeActiveImgUrl(String pwdid);

    //活动的报名人数加一
    public Integer addAcitveEnrollment(Active active);

    //活动的报名人数减一
    public Integer minusAcitveEnrollment(Active active);

     //查询我创建的正在进行的活动
    public List<Active> queryActiveByOpenid(Active active);

    //查询我创建的已经过期的活动
    public List<Active> queryHistoryActiveByOpenid(Active active);

    public Active queryActiveByPwdid(Active active);
    //更改活动信息
    public Integer updateActive(Active active);

    //查询所有正在进行的活动
    public List<Active> queryAllActive();

    //查询所有已经过期的活动
    public List<Active> queryAllHistoryActive();

    //查询我参加的所有正在进行的活动
    public List<Active> queryMypartAllActive(Active active);//查询我参加的所有活动

    //查询我参加的所有已经过期的活动
    public List<Active> queryHistoryMypartAllActive(Active active);//查询我参加的所有活动

    //查询所有包含某关键字的活动
    public List<Active> queryAllContentActive(String content);

    //删除已经创建的活动
    public Integer deleteActive(Active active);

}
