package com.chk.mapper;

import com.chk.pojo.Participant;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface ParticipantMapper {
    public Integer addParticipant(Participant participant);
    public Participant queryParticipantByOpenidPwdid(Participant participant);
    public Integer closeShowMyPartByOpenid(Participant participant);//通过openid和pwdid改变参加活动状态为0
    public Integer updateParticipantByOpenidPwdid(Participant participant);//通过openid和pwdid改变参加活动状态为1

    //通过pwdid查询参加此活动的Participant的集合
    public List<Participant>  queryListParticipantByPwdid(String pwdid);

}
