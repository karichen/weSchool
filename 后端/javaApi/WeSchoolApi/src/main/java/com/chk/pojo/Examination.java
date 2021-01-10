package com.chk.pojo;

import org.springframework.stereotype.Component;

@Component("Examination")
public class Examination {
    Integer id;
    String select_a;
    String select_b;
    String select_c;
    String select_d;
    String answer;
    String problem;
    String analysis;
    String kind;

    public Examination() {
    }

    public Examination(Integer id, String select_a, String select_b, String select_c, String select_d, String answer, String problem, String analysis, String kind) {
        this.id = id;
        this.select_a = select_a;
        this.select_b = select_b;
        this.select_c = select_c;
        this.select_d = select_d;
        this.answer = answer;
        this.problem = problem;
        this.analysis = analysis;
        this.kind = kind;
    }

    public Examination(String select_a, String select_b, String select_c, String select_d, String answer, String problem, String analysis, String kind) {
        this.select_a = select_a;
        this.select_b = select_b;
        this.select_c = select_c;
        this.select_d = select_d;
        this.answer = answer;
        this.problem = problem;
        this.analysis = analysis;
        this.kind = kind;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getSelect_a() {
        return select_a;
    }

    public void setSelect_a(String select_a) {
        this.select_a = select_a;
    }

    public String getSelect_b() {
        return select_b;
    }

    public void setSelect_b(String select_b) {
        this.select_b = select_b;
    }

    public String getSelect_c() {
        return select_c;
    }

    public void setSelect_c(String select_c) {
        this.select_c = select_c;
    }

    public String getSelect_d() {
        return select_d;
    }

    public void setSelect_d(String select_d) {
        this.select_d = select_d;
    }

    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }

    public String getProblem() {
        return problem;
    }

    public void setProblem(String problem) {
        this.problem = problem;
    }

    public String getAnalysis() {
        return analysis;
    }

    public void setAnalysis(String analysis) {
        this.analysis = analysis;
    }

    public String getKind() {
        return kind;
    }

    public void setKind(String kind) {
        this.kind = kind;
    }


    @Override
    public String toString() {
        return "Examination{" +
                "id=" + id +
                ", select_a='" + select_a + '\'' +
                ", select_b='" + select_b + '\'' +
                ", select_c='" + select_c + '\'' +
                ", select_d='" + select_d + '\'' +
                ", answer='" + answer + '\'' +
                ", problem='" + problem + '\'' +
                ", analysis='" + analysis + '\'' +
                ", kind='" + kind + '\'' +
                '}'+"\n";
    }
}
