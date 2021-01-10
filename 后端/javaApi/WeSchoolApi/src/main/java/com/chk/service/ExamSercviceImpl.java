package com.chk.service;

import com.chk.mapper.ExamMapper;
import com.chk.pojo.Exam;
import com.chk.pojo.Examination;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class ExamSercviceImpl implements ExamService {
    @Autowired
    ExamMapper examMapper;

    public List<Exam> queryExamByKind(Exam exam) {
       String kind=exam.getKind();
        Map<String,Object> map=new HashMap<>();
        map.put("kind",kind);
       List<Exam> examList= examMapper.queryExam(map);
        return examList;
    }

    @Override
    public List<Exam> queryExamDetail(Exam exam) {
        String groupd=exam.getGroupd();
        Map<String,Object> map=new HashMap<>();
        map.put("groupd",groupd);
        List<Exam> examList= examMapper.queryExamDetail(map);
        return examList;
    }

    @Override
    public List<Exam> queryExamMore(Exam exam) {
        String kind=exam.getKind();
        Map<String,Object> map=new HashMap<>();
        map.put("kind",kind);
        List<Exam> examList= examMapper.queryExamMore(map);
        return examList;
    }

    @Override
    public List<Examination> queryExaminationByKind(Examination examination) {
        List<Examination> examinations= examMapper.queryExaminationByKind(examination);
        return examinations;
    }
}
