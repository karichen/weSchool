package com.chk.mapper;

import com.chk.pojo.Danmu;
import com.chk.pojo.PreviewVideo;
import com.chk.pojo.ReviewVideo;
import com.chk.pojo.UnitVideo;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper//这个注解表示了这是mybatis的一个mapper类
@Repository//它用于将数据访问层 (DAO 层 ) 的类标识为 Spring Bean
public interface UnitVideoMapper {
    public List<UnitVideo> queryUnitById(Integer id);//通过单元的id查询本单元所有信息
    public int updatePpoints(PreviewVideo previewVideo);//预习浏览量+1
    public int updateRpoints(ReviewVideo reviewVideo);//复习浏览量+1
    public int updatePcomment(UnitVideo unitVideo);//预习视频评论+1
    public int updateRcomment(UnitVideo unitVideo);//复习视频评论+1
    public int addDanmu(Danmu danmu);//增加一条弹幕



}
