package com.maximum.koreaartschool.service;

import com.maximum.koreaartschool.dao.ApplicantMapper;
import com.maximum.koreaartschool.dto.Applicant;
import com.maximum.koreaartschool.dto.ApplicantEvaluate;
import com.maximum.koreaartschool.dto.EvaluateScore;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ApplicantService {

    @Autowired
    private ApplicantMapper applicantMapper;

    @Transactional
    public List<ApplicantEvaluate> getEvaluatorApplicants(int evlNo){
        return applicantMapper.selectEvaluatorApplicants(evlNo);
    }


    @Transactional
    public List<ApplicantEvaluate> getApplicantByDeptno(int deptNo){
        return applicantMapper.selectApplicantByDeptno(deptNo);
    }

    @Transactional
    public List<ApplicantEvaluate> getApplicantByRcrtNo(int rcrtNo){
        return applicantMapper.selectApplicantByRcrtNo(rcrtNo);
    }

    @Transactional
    public List<ApplicantEvaluate> getApplicantByOptions(int deptNo, int rcrtNo){
        return applicantMapper.selectApplicantByOptions(deptNo, rcrtNo);
    }

}
