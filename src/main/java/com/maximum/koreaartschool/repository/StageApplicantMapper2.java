package com.maximum.koreaartschool.repository;

import com.maximum.koreaartschool.model.StageApplicant;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface StageApplicantMapper2 {

    List<StageApplicant> selectStageApplicant(@Param("dept") String dept, @Param("deptCd") String deptCd, @Param("rcrtCd") String rcrtCd, @Param("yearCd") String yearCd);

    int stageApplicantCount();
    void passUpdate(StageApplicant stageApplicants);



    void createTopCandidatesTable(@Param("rcrtNo") int rcrtNo);
    void updateStageApplicant(@Param("rcrtNo") int rcrtNo,@Param("rcrtPscp") int rcrtPscp);
    void updateStageApplicantAll(@Param("rcrtNo") int rcrtNo);
    void updateApplicant(@Param("rcrtNo") int rcrtNo,@Param("rcrtPscp") int rcrtPscp);
    void dropTopCandidatesTable(); // 임시 테이블 삭제 쿼리



}