package com.chk.service;

import com.chk.mapper.DanmuMapper;
import com.chk.mapper.UnitVideoMapper;
import com.chk.pojo.Danmu;
import com.chk.pojo.PreviewVideo;
import com.chk.pojo.ReviewVideo;
import com.chk.pojo.UnitVideo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UnitServiceImpl implements UnitService {
    @Autowired
    UnitVideoMapper unitVideoMapper;

    @Autowired
    DanmuMapper danmuMapper;

    @Qualifier("PreviewVideo")
    @Autowired
    PreviewVideo previewVideo;

    @Autowired
    ReviewVideo reviewVideo;

    @Override
    public List<UnitVideo> queryUnit(UnitVideo unitVideo) {
        Integer unitId=unitVideo.getId();
        List<UnitVideo> unitVideos=unitVideoMapper.queryUnitById(unitId);
        return  unitVideos;
    }

    @Override
    public List<Danmu> queryDanmu(Danmu danmu) {
        String src=danmu.getVideosrc();
        List<Danmu> danmus=danmuMapper.queryDanmuBySrc(src);
        return danmus;
    }

    @Override
    public int updatePoints(Integer id, String kind) {
        int flag = 0;
        if ("preview".equals(kind)){
            previewVideo.setId(id);
            flag=unitVideoMapper.updatePpoints(previewVideo);
        }else  if ("review".equals(kind)){
            reviewVideo.setId(id);
            flag=unitVideoMapper.updateRpoints(reviewVideo);
        }
        return  flag;
    }

    @Override
    public int addDanmu(UnitVideo unitVideo, Danmu danmu, String kind) {
     int flag=unitVideoMapper.addDanmu(danmu);
     int flag2=0;
     if (flag>0&&"preview".equals(kind)){
         flag2=unitVideoMapper.updatePcomment(unitVideo);
     }else if (flag>0&&"review".equals(kind)){
          flag2=unitVideoMapper.updateRcomment(unitVideo);
        }

     return flag2;

    }

}
