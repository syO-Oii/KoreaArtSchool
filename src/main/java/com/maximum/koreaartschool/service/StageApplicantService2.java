package com.maximum.koreaartschool.service;

import com.maximum.koreaartschool.model.StageApplicant;
import com.maximum.koreaartschool.repository.StageApplicantMapper;
import com.maximum.koreaartschool.repository.StageApplicantMapper2;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class StageApplicantService2 {

    @Autowired
    private StageApplicantMapper2 stageApplicantMapper2;

    public List<StageApplicant> selectStageApplicant(String dept, String deptCd, String rcrtCd, String yearCd) {
        return stageApplicantMapper2.selectStageApplicant(dept, deptCd, rcrtCd, yearCd);
    }

    public int stageApplicantCount() {
        return stageApplicantMapper2.stageApplicantCount();
    }

    public void passUpdate(StageApplicant stageApplicant) {
        stageApplicantMapper2.passUpdate(stageApplicant);
    }


    @Transactional
    public void processCandidates(int rcrtNo,int rcrtPscp) {
        int multipliedRcrtPscp = rcrtPscp * 2;

        // 임시 테이블 생성하기
        stageApplicantMapper2.createTopCandidatesTable(rcrtNo);

        // STAGE_APPLICANT 테이블 업데이트
        stageApplicantMapper2.updateStageApplicant(rcrtNo,multipliedRcrtPscp);
        stageApplicantMapper2.updateStageApplicantAll(rcrtNo);

        // APPLICANT 테이블 업데이트
        stageApplicantMapper2.updateApplicant(rcrtNo,multipliedRcrtPscp);

        // 임시 테이블 삭제
        stageApplicantMapper2.dropTopCandidatesTable();
    }

}