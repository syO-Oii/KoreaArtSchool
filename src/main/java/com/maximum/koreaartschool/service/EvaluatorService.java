package com.maximum.koreaartschool.service;

import com.maximum.koreaartschool.dao.EvaluatorMapper;
import com.maximum.koreaartschool.dto.ApplicantEvaluate;
import com.maximum.koreaartschool.dto.ApplicantProcess;
import com.maximum.koreaartschool.dto.EvaluateScore;
import com.maximum.koreaartschool.dto.Evaluator;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EvaluatorService {

    @Autowired
    private EvaluatorMapper evaluatorMapper;

    public List<Evaluator> getAllEvaluator() {
        return evaluatorMapper.selectAllEvaluator();
    }

    public List<ApplicantProcess> getAllApplicants() {
        return evaluatorMapper.selectAllApplicants();
    }

    public List<ApplicantProcess> getApplicantsBySelect(String departmentId, String recruitmentId, String stageId) {
        return evaluatorMapper.findApplicants(departmentId, recruitmentId, stageId);
    }

    @Transactional
    public List<ApplicantEvaluate> getEvaluatorApplicants(int evlNo){
        return evaluatorMapper.selectEvaluatorApplicants(evlNo);
    }


    @Transactional
    public List<ApplicantEvaluate> getApplicantByDeptno(int deptNo){
        return evaluatorMapper.selectApplicantByDeptno(deptNo);
    }

    @Transactional
    public List<ApplicantEvaluate> getApplicantByRcrtNo(int rcrtNo){
        return evaluatorMapper.selectApplicantByRcrtNo(rcrtNo);
    }

    @Transactional
    public List<ApplicantEvaluate> getApplicantByOptions(int deptNo, int rcrtNo){
        return evaluatorMapper.selectApplicantByOptions(deptNo, rcrtNo);
    }

    public void saveScores(List<EvaluateScore> scores) {
        for (EvaluateScore score : scores) {
            evaluatorMapper.upsertScore(score);
        }
    }

}
