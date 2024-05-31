package com.maximum.koreaartschool.dao;

import com.maximum.koreaartschool.dto.ApplyIntroDto;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface ApplicantMapper {

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

    public int updateApplicantStepTwo(int rcrtNo,
                                      Integer aplNo,
                                      String dept,
                                      String deptCode,
                                      String rcrtCode
                                      );

    public int insertApplyFile(Integer aplNo, String saveName);

    public int insertApplyIntro(int rcrtNo, Integer aplNo, String qitemAns1, String qitemAns2);

    public Integer findAplNoByEmailAndPassword(@Param("aplEmail") String aplEmail,
                                               @Param("pswd") String pswd);

    public int checkEmailDuplicate(@Param("aplEmail") String aplEmail);

    public void deleteApplicantStepOne(@Param("aplEmail") String aplEmail);

}