package com.maximum.koreaartschool.repository;

import com.maximum.koreaartschool.entity.Applicant;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface ApplicantMapper {
    // 전체 지원자 명단 조회
    @Select("select * from APPLICANT")
    List<Applicant> selectAll();

    // 평가위원별 단계별 심사대상자 조회
    //List<Applicant> selectEvaluatorStageApplicant(int evaluatorNum, String evaluateStage);

    List<Applicant> selectApplicantByOption(String year,String rcrt,String dept,String deptNo);
}
