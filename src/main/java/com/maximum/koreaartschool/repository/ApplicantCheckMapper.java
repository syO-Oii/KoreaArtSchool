package com.maximum.koreaartschool.repository;

import com.maximum.koreaartschool.model.StageApplicant;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface ApplicantCheckMapper {


    StageApplicant checkApplicant(@Param("aplNm") String aplNm, @Param("aplEml") String aplEml, @Param("pswd") String pswd);
    StageApplicant checkResultApplicant(@Param("aplNm") String aplNm, @Param("aplEml") String aplEml, @Param("pswd") String pswd);


}