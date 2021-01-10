package com.chk.mapper;
import com.chk.pojo.Exam;
import com.chk.pojo.Examination;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Mapper//这个注解表示了这是mybatis的一个mapper类
@Repository//它用于将数据访问层 (DAO 层 ) 的类标识为 Spring Bean
public interface ExamMapper {
    public List<Exam> queryExam(Map map);
    public List<Exam> queryExamMore(Map map);
    public List<Exam> queryExamDetail(Map map);
    public List<Examination> queryExaminationByKind(Examination examination);
}
