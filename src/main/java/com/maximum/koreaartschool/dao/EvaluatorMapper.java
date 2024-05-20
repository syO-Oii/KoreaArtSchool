package com.maximum.koreaartschool.dao;

import com.maximum.koreaartschool.dto.ApplicantProcess;
import com.maximum.koreaartschool.dto.Evaluator;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface EvaluatorMapper {

    @Select("select count(*) from evaluator")
    int count();

    List<Evaluator> selectAllEvaluator();

    List<ApplicantProcess> selectAllApplicants();

    List<ApplicantProcess> findApplicants(String departmentId, String recruitmentId, String stageId);

    List<Evaluator> findByIsSelected(String is_selected);

    List<Evaluator> findByDepartmentId(String departmentId);

    List<Evaluator> findByDepartmentIdAndIsSelected(String departmentId, String is_selected);

    void deleteEvaluator(int evl_no);
}
