package com.maximum.koreaartschool.dao;

import com.maximum.koreaartschool.dto.ApplicantDto;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ApplicantDao {


    // 지원자 정보를 데이터베이스에 삽입하는 메서드
    public int insertApplicantInt(ApplicantDto applicantDto);

}