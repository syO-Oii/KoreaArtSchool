package com.maximum.koreaartschool.service;

import com.maximum.koreaartschool.dao.ApplicantMapper;
import com.maximum.koreaartschool.dto.Applicant;
import com.maximum.koreaartschool.dto.ApplicantProcess;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ApplicantService {

    @Autowired
    private ApplicantMapper applicantMapper;

    public List<ApplicantProcess> getAllApplicants() {
        return applicantMapper.selectAllApplicants();
    }

    public List<ApplicantProcess> getApplicantsBySelect(String departmentId, String recruitmentId, String stageId) {
        return applicantMapper.findApplicants(departmentId, recruitmentId, stageId);
    }
}
