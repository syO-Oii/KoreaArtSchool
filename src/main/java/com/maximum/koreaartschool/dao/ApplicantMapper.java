package com.maximum.koreaartschool.dao;

import com.maximum.koreaartschool.dto.ApplicantDto;
import com.maximum.koreaartschool.dto.StageApplicant;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface ApplicantMapper {

    @Select("SELECT * FROM STAGE_APPLICANT ORDER BY APL_NM")
    List<StageApplicant> getAllStageApplicant();

    @Select("SELECT * FROM STAGE_APPLICANT " +
            "WHERE EVL_STG_CD=#{evlStgCd} " +
            "AND DEPT_CD=#{deptCd} " +
            "AND RCRT_CD=#{rcrtCd}")
    List<StageApplicant> getStageApplicantByOption(@Param("evlStgCd")String evlStgCd,
                                                   @Param("deptCd")String deptCd,
                                                   @Param("rcrtCd")String rcrtCd);


    // 지원자 정보를 데이터베이스에 삽입하는 메서드
//    public int insertApplicantInt(ApplicantDto applicantDto);

    public int insertApplicantStepOne(
                            String aplName,
                            String pswd,
                            String aplBirthDay,
                            String gndrCode,
                            String address,
                            String addressDetail,
                            String aplEmail,
                            String aplTelNumber,
                            String lastAcbg,
                            String aplImg);


    public int updateApplicantStepTwo(ApplicantDto applicantDto);

//    public int insert

}