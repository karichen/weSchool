package com.chk.service;

import com.chk.pojo.FeedBacker;
import org.springframework.stereotype.Service;

@Service
public interface FeedBackService {
    public Integer addFeedBackService(FeedBacker feedBacker);
}
