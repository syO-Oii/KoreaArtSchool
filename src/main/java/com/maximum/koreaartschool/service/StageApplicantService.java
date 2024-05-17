package com.maximum.koreaartschool.service;

import com.maximum.koreaartschool.model.StageApplicant;
import com.maximum.koreaartschool.repository.StageApplicantMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class StageApplicantService {

    @Autowired
    private StageApplicantMapper stageApplicantMapper;

    public List<StageApplicant> selectStageApplicant(String dept, String deptCd, String rcrtCd, String aplPw) {
        return stageApplicantMapper.selectStageApplicant(dept, deptCd, rcrtCd, aplPw);
    }

    public int stageApplicantCount() {
        return stageApplicantMapper.stageApplicantCount();

    }

    public void passUpdate(StageApplicant stageApplicant) {
        stageApplicantMapper.passUpdate(stageApplicant);
    }

//    public void passUpdate(List<StageApplicant> stageApplicant) {
//        stageApplicantMapper.passUpdate(stageApplicant);
//    }
}