package com.chk.service;

import com.chk.pojo.Quser;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface QuserService {
    //查询一个quser
    public Quser queryUser(Quser quser);
    //增加一个quser
    public Integer addUser(Quser quser);
    //查询参加此活动的quser
    public List<Quser> queryListQuser(String pwdid);
}
