package com.chk.service;

import com.chk.mapper.QuserMapper;
import com.chk.pojo.Quser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class QuserServiceImpl implements QuserService {

    @Autowired
    QuserMapper quserMapper;

    @Autowired
    QuserService quserService;


    @Override
    public Quser queryUser(Quser quser) {
        String opendid=quser.getOpenid();
        return quserMapper.queryUserByOpenid(opendid);
    }

    @Override
    public Integer addUser(Quser quser) {
        Integer flag=-1;//-1代表已经存在此人
        if (quserService.queryUser(quser)==null){//此人不存在
             flag=quserMapper.addUser(quser);
        }
        return flag;
    }

    //查询参加此活动的quser的集合
    @Override
    public List<Quser> queryListQuser(String pwdid) {
        return quserMapper.queryListQuserByPwdid(pwdid);
    }
}
