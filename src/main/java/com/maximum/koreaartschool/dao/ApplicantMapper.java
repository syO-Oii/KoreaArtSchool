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

    List<EvaluateScore> selectApplicantByDeptno(int deptNo);

}
