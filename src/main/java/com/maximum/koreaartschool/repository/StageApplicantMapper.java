package com.maximum.koreaartschool.repository;

import com.maximum.koreaartschool.model.StageApplicant;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface StageApplicantMapper {

    List<StageApplicant> selectStageApplicant(@Param("dept") String dept, @Param("deptCd") String deptCd, @Param("rcrtCd") String rcrtCd, @Param("aplPw") String aplPw);

    int stageApplicantCount();

        void passUpdate(StageApplicant stageApplicants);

//    void passUpdate(List<StageApplicant> stageApplicants);
}