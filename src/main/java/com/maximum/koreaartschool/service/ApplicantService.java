package com.maximum.koreaartschool.service;

import com.maximum.koreaartschool.dto.ApplicantDTO;
import com.maximum.koreaartschool.dto.EvaluateScoreDto;
import com.maximum.koreaartschool.dao.ApplicantMapper;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ApplicantService {
    private final ApplicantMapper applicantMapper;

    @Autowired
    public ApplicantService(ApplicantMapper applicantMapper) {
        this.applicantMapper = applicantMapper;
    }

    @Transactional
    public List<ApplicantDTO> getAllApplicant(){
        return applicantMapper.selectAll();
    }

    // 평가위원별 대상자 평가
    @Transactional
    public List<EvaluateScoreDto> getSelectedApplicant(String year, String rcrt, String dept, String deptNo){
        return applicantMapper.selectApplicantByOption(rcrt, deptNo);
    }

    @Transactional
    public List<EvaluateScoreDto> getApplicantByDeptno(int deptNo){
        return applicantMapper.selectApplicantByDeptno(deptNo);
    }

    ;
}
