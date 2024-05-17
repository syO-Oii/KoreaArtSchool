package com.maximum.koreaartschool.service;

import com.maximum.koreaartschool.dao.ApplicantMapper;
import com.maximum.koreaartschool.dto.Applicant;
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
    public List<EvaluateScore> getAllApplicant(){
        return applicantMapper.selectAll();
    }


    @Transactional
    public List<EvaluateScore> getApplicantByDeptno(String deptNo){
        int no = Integer.parseInt(deptNo);
        return applicantMapper.selectApplicantByDeptno(no);
    }

}
