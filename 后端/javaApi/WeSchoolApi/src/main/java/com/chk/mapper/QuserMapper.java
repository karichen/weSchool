package com.chk.mapper;

import com.chk.pojo.Quser;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository("QuserMapper")
public interface QuserMapper {
    public Quser queryUserByOpenid(String openid);
    public Integer addUser(Quser quser);
   public List<Quser> queryListQuserByPwdid(String pwdid);
}
