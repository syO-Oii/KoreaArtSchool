package com.maximum.koreaartschool.dao;

import com.maximum.koreaartschool.dto.RecruitmentInformation;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface AdminMapper {

    List<RecruitmentInformation> selectRecruitment(String mtcltn_yd_cd, String dept_cd, String rcrt_cd);
}
