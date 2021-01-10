package com.chk.service;

import com.chk.pojo.Danmu;
import com.chk.pojo.UnitVideo;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface UnitService {
    public List<UnitVideo>queryUnit(UnitVideo unitVideo);//查询本单元所有信息
    public List<Danmu>queryDanmu(Danmu danmu);//查询弹幕信息
    public int updatePoints(Integer id, String kind);//浏览量+1

    public int addDanmu(UnitVideo unitVideo, Danmu danmu, String kind);//增加一条弹幕
}
