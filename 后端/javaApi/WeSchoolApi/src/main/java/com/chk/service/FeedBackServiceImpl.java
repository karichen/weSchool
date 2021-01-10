package com.chk.service;

import com.chk.mapper.FeedBackMapper;
import com.chk.pojo.FeedBacker;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class FeedBackServiceImpl implements FeedBackService {
    @Autowired
    FeedBackMapper feedBackMapper;

    @Override
    public Integer addFeedBackService(FeedBacker feedBacker) {
        return feedBackMapper.addFeedBack(feedBacker);
    }
}
