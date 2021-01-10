package com.chk.service;
import com.chk.pojo.Exam;
import com.chk.pojo.Examination;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface ExamService {
    public List<Exam> queryExamByKind(Exam exam);
    public List<Exam> queryExamMore(Exam exam);
    public List<Exam> queryExamDetail(Exam exam);
    public List<Examination> queryExaminationByKind(Examination examination);
}
