package com.maximum.koreaartschool.dao;

import com.maximum.koreaartschool.dto.ApplicantDTO;
import com.maximum.koreaartschool.dto.EvaluateScoreDto;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ApplicantMapper {
    // 전체 지원자 명단 조회
    //@Select("select * from APPLICANT")
    List<ApplicantDTO> selectAll();

    // 평가위원별 단계별 심사대상자 조회
    //List<Applicant> selectEvaluatorStageApplicant(int evaluatorNum, String evaluateStage);

    List<EvaluateScoreDto> selectApplicantByOption(String rcrt, String deptNo);

    List<EvaluateScoreDto> selectApplicantByDeptno(int deptNo);
}
