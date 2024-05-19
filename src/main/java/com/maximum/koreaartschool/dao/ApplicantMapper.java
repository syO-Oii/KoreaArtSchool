package com.maximum.koreaartschool.dao;

import com.maximum.koreaartschool.dto.Applicant;
import com.maximum.koreaartschool.dto.ApplicantEvaluate;
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

    List<ApplicantEvaluate> selectEvaluatorApplicants(int evlNo);

    @Select("select * from DUMMY_APPLICANT_EVALUATE where DEPT_CD = #{deptNo}")
    List<ApplicantEvaluate> selectApplicantByDeptno(int deptNo);

    @Select("select * from DUMMY_APPLICANT_EVALUATE where RCRT_CD = #{rcrtNo}")
    List<ApplicantEvaluate> selectApplicantByRcrtNo(int rcrtNo);

    @Select("select * from DUMMY_APPLICANT_EVALUATE where DEPT_CD = #{deptNo} AND RCRT_CD = #{rcrtNo}")
    List<ApplicantEvaluate> selectApplicantByOptions(int deptNo, int rcrtNo);

}
