package com.chk.mapper;

import com.chk.pojo.FeedBacker;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Mapper
@Repository
public interface FeedBackMapper {
  public Integer addFeedBack(FeedBacker feedBacker);
}
