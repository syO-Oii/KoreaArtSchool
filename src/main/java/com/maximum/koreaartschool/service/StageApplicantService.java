package com.maximum.koreaartschool.service;

import com.maximum.koreaartschool.model.StageApplicant;
import com.maximum.koreaartschool.repository.StageApplicantMapper;
import jakarta.transaction.Transactional;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Slf4j
@Service
public class StageApplicantService {

    @Autowired
    private StageApplicantMapper stageApplicantMapper;

    public List<StageApplicant> selectStageApplicant(String dept, String deptCd, String rcrtCd, String yearCd) {
        return stageApplicantMapper.selectStageApplicant(dept, deptCd, rcrtCd, yearCd);
    }

    public void stageApplicantCount(String yearCd) {
        stageApplicantMapper.stageApplicantCount(yearCd);
    }

    public void passUpdate(StageApplicant stageApplicant) {
        stageApplicantMapper.passUpdate(stageApplicant);
    }


    @Transactional
    public void processCandidates(int rcrtNo,int rcrtPscp) {
        int multipliedRcrtPscp = rcrtPscp * 3;
        // 임시 테이블 생성
        stageApplicantMapper.createTopCandidatesTable(rcrtNo);

        // STAGE_APPLICANT 테이블 업데이트
        stageApplicantMapper.updateStageApplicant(rcrtNo,multipliedRcrtPscp);
        stageApplicantMapper.updateStageApplicantAll(rcrtNo);

        // APPLICANT 테이블 업데이트
        stageApplicantMapper.updateApplicant(rcrtNo,multipliedRcrtPscp);

        // 임시 테이블 삭제
        stageApplicantMapper.dropTopCandidatesTable();
    }

}