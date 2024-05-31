package com.maximum.koreaartschool.dao;

import com.maximum.koreaartschool.dto.Evaluator;
import com.maximum.koreaartschool.dto.RecruitmentInformation;
import com.maximum.koreaartschool.dto.StageEvaluator;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface AdminMapper {

    List<RecruitmentInformation> selectRecruitment(@Param("mtcltn_yd_cd")String mtcltn_yd_cd, @Param("dept_cd")String dept_cd, @Param("rcrt_cd")String rcrt_cd);

    List<StageEvaluator> selectStgEvaluator(@Param("evl_stg_cd")String evl_stg_cd, @Param("rcrt_no")int rcrt_no);

    void updateEvaluatorInfo(int evl_no, String evl_stg_cd, String is_selected);
}
