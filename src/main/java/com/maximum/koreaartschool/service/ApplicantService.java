package com.maximum.koreaartschool.service;

import com.maximum.koreaartschool.dao.ApplicantMapper;
import com.maximum.koreaartschool.dto.StageApplicant;
import com.maximum.koreaartschool.dto.StageEvaluator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ApplicantService {

    @Autowired
    private ApplicantMapper applicantMapper;

    public List<StageApplicant> getAllStageApplicant() {
        return applicantMapper.getAllStageApplicant();
    }

    public List<StageApplicant> getStageApplicantByOption(String evlStgCd, String deptCd, String rcrtCd) {
        return applicantMapper.getStageApplicantByOption(evlStgCd, deptCd, rcrtCd);
    }

}
