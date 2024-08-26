package com.maximum.koreaartschool.service;

import com.maximum.koreaartschool.model.StageApplicant;
import com.maximum.koreaartschool.repository.StageApplicantMapper3;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class StageApplicantService3 {

    @Autowired
    private StageApplicantMapper3 stageApplicantMapper3;

    public List<StageApplicant> selectStageApplicant(String dept, String deptCd, String rcrtCd, String yearCd) {
        return stageApplicantMapper3.selectStageApplicant(dept, deptCd, rcrtCd, yearCd);
    }

    public int stageApplicantCount() {
        return stageApplicantMapper3.stageApplicantCount();
    }

    public void passUpdate(StageApplicant stageApplicant) {
        stageApplicantMapper3.passUpdate(stageApplicant);
    }


    @Transactional
    public void processCandidates(int rcrtNo,int rcrtPscp) {
        // 임시 테이블 생성
        stageApplicantMapper3.createTopCandidatesTable(rcrtNo);

        // STAGE_APPLICANT 테이블 업데이트
        stageApplicantMapper3.updateStageApplicant(rcrtNo,rcrtPscp);
        stageApplicantMapper3.updateStageApplicantAll(rcrtNo);

        // APPLICANT 테이블 업데이트
        stageApplicantMapper3.updateApplicant(rcrtNo,rcrtPscp);

        stageApplicantMapper3.updateRcrtApplicant(rcrtNo);
        // 임시 테이블 삭제
        stageApplicantMapper3.dropTopCandidatesTable();
    }

}