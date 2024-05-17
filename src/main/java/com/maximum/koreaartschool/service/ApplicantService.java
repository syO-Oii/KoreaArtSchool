package com.maximum.koreaartschool.service;

<<<<<<< HEAD
import com.maximum.koreaartschool.dao.ApplicantMapper;
import com.maximum.koreaartschool.dto.Applicant;
import com.maximum.koreaartschool.dto.ApplicantProcess;
=======
import com.maximum.koreaartschool.entity.Applicant;
import com.maximum.koreaartschool.entity.EvaluateScore;
import com.maximum.koreaartschool.repository.ApplicantMapper;
import jakarta.transaction.Transactional;
>>>>>>> origin/🛠️develop
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ApplicantService {
<<<<<<< HEAD

    @Autowired
    private ApplicantMapper applicantMapper;

=======
    private final ApplicantMapper applicantMapper;

    @Autowired
    public ApplicantService(ApplicantMapper applicantMapper) {
        this.applicantMapper = applicantMapper;
    }

    @Transactional
    public List<Applicant> getAllApplicant(){
        return applicantMapper.selectAll();
    }

    // 평가위원별 대상자 평가
    @Transactional
    public List<EvaluateScore> getSelectedApplicant(String year, String rcrt, String dept, String deptNo){
        return applicantMapper.selectApplicantByOption(rcrt, deptNo);
    }

    @Transactional
    public List<EvaluateScore> getApplicantByDeptno(int deptNo){
        return applicantMapper.selectApplicantByDeptno(deptNo);
    }

    ;
>>>>>>> origin/🛠️develop
}
