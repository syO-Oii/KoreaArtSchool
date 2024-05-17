package com.maximum.koreaartschool.dao;

import com.maximum.koreaartschool.dto.Applicant;
import com.maximum.koreaartschool.dto.ApplicantProcess;
import com.maximum.koreaartschool.dto.EvaluateScore;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface ApplicantMapper {

    @Select("select count(*) from applicant")
    int count();

    List<EvaluateScore> selectAll();

    // 평가위원별 단계별 심사대상자 조회
    //List<Applicant> selectEvaluatorStageApplicant(int evaluatorNum, String evaluateStage);

    List<EvaluateScore> selectApplicantByOption(String rcrt, String deptNo);

    List<EvaluateScore> selectApplicantByDeptno(int deptNo);

}
