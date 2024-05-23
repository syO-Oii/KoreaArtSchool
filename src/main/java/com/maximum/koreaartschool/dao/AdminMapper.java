package com.maximum.koreaartschool.dao;

import com.maximum.koreaartschool.dto.RecruitmentInformation;
import com.maximum.koreaartschool.dto.StageEvaluator;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface AdminMapper {

    List<RecruitmentInformation> selectRecruitment(String mtcltn_yd_cd, String dept_cd, String rcrt_cd);

    List<StageEvaluator> selectStgEvaluator(int evl_stg_no, int rcrt_no);
}
