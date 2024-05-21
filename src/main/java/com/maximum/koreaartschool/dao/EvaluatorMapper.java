package com.maximum.koreaartschool.dao;

import com.maximum.koreaartschool.dto.ApplicantEvaluate;
import com.maximum.koreaartschool.dto.ApplicantProcess;
import com.maximum.koreaartschool.dto.EvaluateScore;
import com.maximum.koreaartschool.dto.Evaluator;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface EvaluatorMapper {

    @Select("select count(*) from evaluator")
    int count();
    @Select("select * from evaluator")
    List<Evaluator> selectAllEvaluator();

    List<ApplicantProcess> selectAllApplicants();

    List<ApplicantProcess> findApplicants(String departmentId, String recruitmentId, String stageId);

    List<ApplicantEvaluate> selectEvaluatorApplicants(int evlNo);

    @Select("select * from DUMMY_APPLICANT_EVALUATE where DEPT_CD = #{deptNo}")
    List<ApplicantEvaluate> selectApplicantByDeptno(@Param("deptNo") int deptNo);

    @Select("select * from DUMMY_APPLICANT_EVALUATE where RCRT_CD = #{rcrt}")
    List<ApplicantEvaluate> selectApplicantByRcrtNo(@Param("rcrt") int rcrt);

    @Select("select * from DUMMY_APPLICANT_EVALUATE where DEPT_CD = #{deptNo} AND RCRT_CD = #{rcrt}")
    List<ApplicantEvaluate> selectApplicantByOptions(@Param("deptNo") int deptNo, @Param("rcrt") int rcrt);

    @Insert("INSERT INTO evaluate_score (evl_Stg_No, rcrt_No, evl_No, apl_No, apl_Nm, EVLQ_NO, score, dept_Cd) " +
            "VALUES (#{evl_Stg_No}, #{rcrt_No}, #{evl_No}, #{apl_No}, #{apl_Nm}, #{EVLQ_NO}, #{score}, #{dept_Cd})" +
            "ON DUPLICATE KEY UPDATE " +
            "score = VALUES(score)")
    void upsertScore(EvaluateScore score);

    @Select("SELECT * FROM evaluate_score WHERE evl_No = #{evl_No}")
    List<EvaluateScore> getScoresByEvaluator(int evl_No);

    @Update("UPDATE DUMMY_APPLICANT_EVALUATE SET IS_EVALUATED = #{IS_EVALUATED} WHERE EVL_STG_NO = #{EVL_STG_NO} AND RCRT_NO = #{RCRT_NO} AND EVL_NO = #{EVL_NO} AND APL_NO = #{APL_NO}")
    void updateEvaluation(ApplicantEvaluate evaluation);
}
