package com.chk.service;

import com.chk.pojo.Participant;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface  ParticipantService {
    //报名也增加报名类型
    public Integer addParticipant(Participant participant);
    public Participant queryParticipantByOpenidPwdid(Participant participant);//通过openid和pwdid查询报名
    public Integer cancelMypart(Participant participant);//取消参加活动（取消报名）
    public Integer updateParticipantByOpenidPwdid(Participant participant);//通过openid和pwdid重新报名

    //查询参加此活动的Participant的集合
    public List<Participant> queryListParticipant(Participant participant);
}
