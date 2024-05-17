package com.maximum.koreaartschool.service;

import com.maximum.koreaartschool.dao.ApplicantMapper;
import com.maximum.koreaartschool.dto.ApplicantDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class ApplicantService {


    @Autowired
    private ApplicantMapper applicantMapper;

    @Transactional
    public boolean saveApplicant(ApplicantDto applicantDto) {
        try {
            // 여기서는 Mapper를 이용해서 데이터베이스에 DTO를 저장하는 로직을 구현합니다.
            // 예를 들어, Mapper를 통해 데이터베이스에 INSERT 쿼리를 실행할 수 있습니다.
            applicantMapper.insertApplicantInt(applicantDto);
            return true; // 저장에 성공하면 true 반환
        } catch (Exception e) {
            e.printStackTrace();
            return false; // 저장에 실패하면 false 반환
        }
    }



}
