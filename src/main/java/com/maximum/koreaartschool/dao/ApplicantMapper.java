package com.maximum.koreaartschool.dao;

import com.maximum.koreaartschool.dto.ApplicantDto;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.beans.factory.annotation.Autowired;

@Mapper
public interface ApplicantMapper {


    // 지원자 정보를 데이터베이스에 삽입하는 메서드
    int insertApplicantInt(ApplicantDto applicantDto);
}