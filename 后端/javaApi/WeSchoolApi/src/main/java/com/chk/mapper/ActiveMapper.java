package com.chk.mapper;

import com.chk.pojo.Active;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Mapper
@Repository
public interface ActiveMapper {
    public Integer addActive(Map activeMap);
    public Integer updateActiveImgUrl1(String pwdid,String imgUrlname);
    public Integer updateActiveImgUrl2(String pwdid,String imgUrlname);
    public Integer updateActiveImgUrl3(String pwdid,String imgUrlname);
    public Integer updateActiveImgUrl4(String pwdid,String imgUrlname);
    public Active queryeActiveImgUrl(Map map);

    //通过pwdid是的活动报名人数加1
    public Integer updateOneActiveByPwdid(String pwdid);

    //通过pwdid是的活动报名人数减1
    public Integer  updateMinusOneActiveByPwdid(String pwdid);

    //查询我创建的正在进行的活动
    public List<Active> queryActiveByOpenid(String qriginator_openid);

    //查询我创建的已经过期的活动
    public List<Active> queryHistoryActiveByOpenid(String qriginator_openid);

    public Active queryActiveByPwdid(String pwdid);
    public Integer updateActive(Map activeMap);

    //查询所有正在进行的活动
    public List<Active> queryAllActive();

    //查询所有已经过期的活动
    public List<Active> queryAllHistoryActive();

    //查询所有我参加的正在进行的活动
    public List<Active> queryMypartAllActive(String openid);

    //查询所有我参加的已经过期的活动
    public List<Active> queryHistoryMypartAllActive(String openid);

    //查询所有包含某关键字的活动
    public List<Active> queryAllContentActive(String content);

    //根据openid和pwdid删除活动
    public Integer deleteActiveByOpenIdPwdid(Map activeMap);
}
