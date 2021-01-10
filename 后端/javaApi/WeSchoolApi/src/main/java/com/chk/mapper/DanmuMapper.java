package com.chk.mapper;

import com.chk.pojo.Danmu;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface DanmuMapper {
    public List<Danmu> queryDanmuBySrc(String src);//通过视频的src查询弹幕信息
}
