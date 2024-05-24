package com.maximum.koreaartschool.dao;

import com.maximum.koreaartschool.dto.ApplicantDto;
import com.maximum.koreaartschool.dto.ApplyCoverLetterDto;
import com.maximum.koreaartschool.dto.ApplyFileDto;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface ApplicantMapper {

    //원서접수 1단계 insert (APPLICANT 지원자 테이블)
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
            String saveName);

    //원서접수 2단계 update (APPLICANT 지원자 테이블)
    public int updateApplicantStepTwo(Integer aplNo,
                                      String dept,
                                      String deptCode,
                                      String rcrtCode
                                      );

    //원서접수 2단계 insert (APLY_FILE 서류제출 테이블)
    public int insertApplyFile(ApplyCoverLetterDto applyFileDto);

    //원서접수 2단계 insert (APLY_INTRO 자소서 테이블)
    public int insertApplyCoverLetter(ApplyFileDto coverLetterDto);

    // 이메일과 비밀번호로 데이터를 조회하는 메서드 정의
    Integer findAplNoByEmailAndPassword(@Param("aplEmail") String aplEmail,
                                        @Param("pswd") String pswd);

}