package com.maximum.koreaartschool.dao;

import com.maximum.koreaartschool.dto.ApplicantDto;
import com.maximum.koreaartschool.dto.ApplyCoverLetterDto;
import com.maximum.koreaartschool.dto.ApplyFileDto;
import org.apache.ibatis.annotations.Mapper;

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
                            String aplImg);

    //원서접수 2단계 update (APPLICANT 지원자 테이블)
    public int updateApplicantStepTwo(ApplicantDto applicantDto);

    //원서접수 2단계 insert (APLY_FILE 서류제출 테이블)
    public int insertApplyFile(ApplyCoverLetterDto applyFileDto);

    //원서접수 2단계 insert (APLY_INTRO 자소서 테이블)
    public int insertApplyCoverLetter(ApplyFileDto coverLetterDto);

    void insertApplicantStepOne(ApplicantDto applicantDto);
}