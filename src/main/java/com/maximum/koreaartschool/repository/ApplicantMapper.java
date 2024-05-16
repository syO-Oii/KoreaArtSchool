package com.maximum.koreaartschool.repository;

import com.maximum.koreaartschool.entity.Applicant;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface ApplicantMapper {
    @Select("select * from APPLICANT")
    List<Applicant> selectAll();
}
