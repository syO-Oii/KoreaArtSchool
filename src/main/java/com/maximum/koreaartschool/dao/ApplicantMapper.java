package com.maximum.koreaartschool.dao;

import com.maximum.koreaartschool.dto.Applicant;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface ApplicantMapper {

    @Select("select count(*) from applicant")
    int count();
    @Select("select * from applicant")
    List<Applicant> selectAllApplicant();
}
