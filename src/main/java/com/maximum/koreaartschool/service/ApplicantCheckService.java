package com.maximum.koreaartschool.service;

import com.maximum.koreaartschool.model.StageApplicant;
import com.maximum.koreaartschool.repository.ApplicantCheckMapper;
import com.maximum.koreaartschool.repository.StageApplicantMapper;
import jakarta.transaction.Transactional;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Slf4j
@Service
public class ApplicantCheckService {

    @Autowired
    private ApplicantCheckMapper applicantCheckMapper;

    public StageApplicant checkApplicant(String aplNm, String aplEml, String pswd) {
        // 조회된 결과를 반환
        return applicantCheckMapper.checkApplicant(aplNm, aplEml, pswd);
    }

    public StageApplicant checkResultApplicant(String aplNm, String aplEml, String pswd) {
        // 조회된 결과를 반환
        return applicantCheckMapper.checkResultApplicant(aplNm, aplEml, pswd);
    }





}