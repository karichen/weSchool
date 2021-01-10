package com.chk.service;

import com.chk.mapper.ParticipantMapper;
import com.chk.pojo.Active;
import com.chk.pojo.Participant;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ParticipantServiceImpl implements ParticipantService {
    @Autowired
    ParticipantMapper participantMapper;

    @Autowired
    ParticipantService participantService;

    @Autowired
    ActiveService activeService;

    @Autowired
    Active active;

    @Autowired
    Participant participant2;


    @Override
    public Integer addParticipant(Participant participant) {
        participant2=participantService.queryParticipantByOpenidPwdid(participant);
        if (participantService.queryParticipantByOpenidPwdid(participant)!=null){
            if (participant2.getShowflag()==1)
            { return -2;}//如果重复就返回-2
            else if (participant2.getShowflag()==0){

                //二次报名
                active.setPwdid(participant2.getPwdid());
                if (activeService.addAcitveEnrollment(active)==1)return participantService.updateParticipantByOpenidPwdid(participant);
                else  return -1;//-1失败
            }
            else return -1;//-1失败
        }else {
            active.setPwdid(participant.getPwdid());
            //一次报名
           if(activeService.addAcitveEnrollment(active)==1){ return  participantMapper.addParticipant(participant);
           }else return -1;//-1失败
        }
    }

    @Override
    public Participant queryParticipantByOpenidPwdid(Participant participant) {
        return participantMapper.queryParticipantByOpenidPwdid(participant);
    }

    //取消报名
    @Override
    public Integer cancelMypart(Participant participant) {
        active.setPwdid(participant.getPwdid());
        if(activeService.minusAcitveEnrollment(active)==1) return participantMapper.closeShowMyPartByOpenid(participant);
        else return -1;//-1代表失败
    }

    @Override
    public Integer updateParticipantByOpenidPwdid(Participant participant) {
        return participantMapper.updateParticipantByOpenidPwdid(participant);
    }


    @Override
    public List<Participant> queryListParticipant(Participant participant) {
       return participantMapper.queryListParticipantByPwdid(participant.getPwdid());
    }
}
