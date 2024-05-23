package com.maximum.koreaartschool.dao;

import com.maximum.koreaartschool.dto.*;
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

    List<Evaluator> findByIsSelected(String is_selected);

    List<Evaluator> findByDepartmentId(String departmentId);

    List<Evaluator> findByDepartmentIdAndIsSelected(String departmentId, String is_selected);

    void deleteEvaluator(int evl_no);

    void updateEvaluator(Evaluator evaluator);

    void insertEvaluator(Evaluator evaluator);

    List<ViewApplicantEvaluate> selectEvaluatorApplicants(@Param("evlNo") int evlNo, @Param("evlStgCd") int evlStgCd);

    @Select("select * from APPLICANT_EVALUATE where DEPT_CD = #{deptNo}")
    List<ViewApplicantEvaluate> selectApplicantByDeptno(@Param("deptNo") int deptNo);

    @Select("select * from APPLICANT_EVALUATE where RCRT_CD = #{rcrt}")
    List<ViewApplicantEvaluate> selectApplicantByRcrtNo(@Param("rcrt") int rcrt);

    @Select("select * from APPLICANT_EVALUATE where DEPT_CD = #{deptNo} AND RCRT_CD = #{rcrt}")
    List<ViewApplicantEvaluate> selectApplicantByOptions(@Param("deptNo") int deptNo, @Param("rcrt") int rcrt);

    @Insert("INSERT INTO EVALUATE_SCORE (EVL_STG_NO, RCRT_NO, EVL_NO, APL_NO, EVLQ_NO, SCORE, EVL_STG_CD) " +
            "VALUES (#{EVL_STG_NO}, #{RCRT_NO}, #{EVL_NO}, #{APL_NO}, #{EVLQ_NO}, #{SCORE}, #{EVL_STG_CD})" +
            "ON DUPLICATE KEY UPDATE " +
            "score = VALUES(score)")
    void upsertScore(EvaluateScore score);

    @Select("SELECT * FROM EVALUATE_SCORE WHERE EVL_NO = #{evl_No}")
    List<EvaluateScore> getScoresByEvaluator(int evl_No);

    @Update("UPDATE APPLICANT_EVALUATE SET IS_EVALUATED = #{IS_EVALUATED} WHERE EVL_STG_NO = #{EVL_STG_NO} AND RCRT_NO = #{RCRT_NO} AND EVL_NO = #{EVL_NO} AND APL_NO = #{APL_NO}")
    void updateEvaluation(ViewApplicantEvaluate evaluation);

    void updateEvaluateScoreSum();


}
