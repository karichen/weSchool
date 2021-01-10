package com.chk.service;

import com.chk.mapper.ActiveMapper;
import com.chk.pojo.Active;
import com.chk.util.Password;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class ActiveServiceImpl implements  ActiveService {

    @Autowired
    ActiveMapper activeMapper;

    @Autowired
    ActiveService activeService;

    @Autowired
    Password password;

    @Override
    public Integer addActive(Active active,String pwdid) {
        Map<String,Object> activeMap=new HashMap<>();
        activeMap.put("major",active.getMajor());
        activeMap.put("starttime",active.getStarttime());
        activeMap.put("endtime",active.getEndtime());
        activeMap.put("place",active.getPlace());
        activeMap.put("salary",active.getSalary());
        activeMap.put("count",active.getCount());
        activeMap.put("remark",active.getRemark());
        activeMap.put("qriginator_openid",active.getQriginator().getOpenid());
        activeMap.put("qriginator_QQ",active.getQriginator().getQQ());
        activeMap.put("qriginator_phone",active.getQriginator().getPhone());
        activeMap.put("fields",active.getFields());
        activeMap.put("pwdid",pwdid);
       return activeMapper.addActive(activeMap);
    }

    @Override
    public Integer updateActiveImgUrls(String pwdid, String imgUrlname,String urlid) {
          Integer flag=0;//0表示失败
        if (urlid.equals("1")){
            flag= activeMapper.updateActiveImgUrl1(pwdid,imgUrlname);
        }else if (urlid.equals("2")){
            flag= activeMapper.updateActiveImgUrl2(pwdid,imgUrlname);
        }else if (urlid.equals("3")){
            flag= activeMapper.updateActiveImgUrl3(pwdid,imgUrlname);
        }else if (urlid.equals("4")){
            flag= activeMapper.updateActiveImgUrl4(pwdid,imgUrlname);
        }
        return flag;

//        Active active=activeService.queryeActiveImgUrl(pwdid);
//        if ("http:chk".equals(active.getImgUrl1())){
//            activeMapper.updateActiveImgUrl1(pwdid,imgUrlname);
//        }
//        if(!"http:chk".equals(active.getImgUrl1())&&"http:chk".equals(active.getImgUrl2())){
//            activeMapper.updateActiveImgUrl2(pwdid,imgUrlname);
//        }
//        if(!"http:chk".equals(active.getImgUrl1())&&!"http:chk".equals(active.getImgUrl2())
//                &&"http:chk".equals(active.getImgUrl3())){
//            activeMapper.updateActiveImgUrl3(pwdid,imgUrlname);
//        }
//        if(!"http:chk".equals(active.getImgUrl1())&&!"http:chk".equals(active.getImgUrl2())
//          &&!"http:chk".equals(active.getImgUrl3())&&"http:chk".equals(active.getImgUrl4())){
//            activeMapper.updateActiveImgUrl4(pwdid,imgUrlname);
//        }
//     return 1;
    }

    @Override
    public Active queryeActiveImgUrl(String pwdid) {
        Map<String,Object> map=new HashMap<>();
        map.put("pwdid",pwdid);
        map.put("uuid1",password.generatePassword(10));
       return activeMapper.queryeActiveImgUrl(map);
    }

    @Override
    public Integer addAcitveEnrollment(Active active) {
        return  activeMapper.updateOneActiveByPwdid(active.getPwdid());
    }

    @Override
    public Integer minusAcitveEnrollment(Active active) {
        return activeMapper.updateMinusOneActiveByPwdid(active.getPwdid());
    }

    //查询我创建的正在进行的活动
    @Override
    public List<Active> queryActiveByOpenid(Active active) {
        String qriginator_openid=active.getQriginator().getOpenid();
        return activeMapper.queryActiveByOpenid(qriginator_openid);
    }

    //查询我创建的已经过期的活动
    @Override
    public List<Active> queryHistoryActiveByOpenid(Active active) {
        String qriginator_openid=active.getQriginator().getOpenid();
        return activeMapper.queryHistoryActiveByOpenid(qriginator_openid);
    }

    @Override
    public Active queryActiveByPwdid(Active active) {
        return activeMapper.queryActiveByPwdid(active.getPwdid());
    }

    @Override
    public Integer updateActive(Active active) {
        Map<String,Object> activeMap=new HashMap<>();
        activeMap.put("major",active.getMajor());
        activeMap.put("starttime",active.getStarttime());
        activeMap.put("endtime",active.getEndtime());
        activeMap.put("place",active.getPlace());
        activeMap.put("salary",active.getSalary());
        activeMap.put("count",active.getCount());
        activeMap.put("remark",active.getRemark());
        activeMap.put("qriginator_openid",active.getQriginator().getOpenid());
        activeMap.put("qriginator_QQ",active.getQriginator().getQQ());
        activeMap.put("qriginator_phone",active.getQriginator().getPhone());
        activeMap.put("fields",active.getFields());
        activeMap.put("pwdid",active.getPwdid());
        return activeMapper.updateActive(activeMap);
    }

    //查询所有正在进行的活动
    @Override
    public List<Active> queryAllActive() {
        return activeMapper.queryAllActive();
    }

    //查询所有已经过期的活动
    @Override
    public List<Active> queryAllHistoryActive() {
        return activeMapper.queryAllHistoryActive();
    }

    //查询所有我参加的正在进行的活动
    @Override
    public List<Active> queryMypartAllActive(Active active) {
        return activeMapper.queryMypartAllActive(active.getQriginator().getOpenid());
    }

    //查询所有我参加的已经过期的活动
    @Override
    public List<Active> queryHistoryMypartAllActive(Active active) {
        return activeMapper.queryHistoryMypartAllActive(active.getQriginator().getOpenid());
    }

    @Override
    public List<Active> queryAllContentActive(String content) {
       return activeMapper.queryAllContentActive(content);
    }

    //删除已经创建的活动
    @Override
    public Integer deleteActive(Active active) {
        HashMap<String,Object> activeMap=new HashMap<>();
        activeMap.put("openid",active.getQriginator().getOpenid());
        activeMap.put("pwdid",active.getPwdid());
       return activeMapper.deleteActiveByOpenIdPwdid(activeMap);
    }


}
