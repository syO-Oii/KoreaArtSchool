package com.maximum.koreaartschool.service;

import com.maximum.koreaartschool.dao.EvaluatorMapper;
import com.maximum.koreaartschool.dto.*;
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
    public List<ShowApplicantEvaluateScore> getTestEvaluatorApplicants(int evlNo){
        return evaluatorMapper.selectTestEvaluatorApplicants(evlNo);
    }


    @Transactional
    public List<ApplicantEvaluate> getApplicantByDeptno(int deptNo){
        return evaluatorMapper.selectApplicantByDeptno(deptNo);
    }

    @Transactional
    public List<ShowApplicantEvaluateScore> getTestApplicantByDeptno(int deptNo){
        return evaluatorMapper.selectTestApplicantByDeptno(deptNo);
    }

    @Transactional
    public List<ApplicantEvaluate> getApplicantByRcrtNo(int rcrtNo){
        return evaluatorMapper.selectApplicantByRcrtNo(rcrtNo);
    }

    @Transactional
    public List<ShowApplicantEvaluateScore> getTestApplicantByRcrtNo(int rcrtNo){
        return evaluatorMapper.selectTestApplicantByRcrtNo(rcrtNo);
    }

    @Transactional
    public List<ApplicantEvaluate> getApplicantByOptions(int deptNo, int rcrtNo){
        return evaluatorMapper.selectApplicantByOptions(deptNo, rcrtNo);
    }

    @Transactional
    public List<ShowApplicantEvaluateScore> getTestApplicantByOptions(int deptNo, int rcrtNo){
        return evaluatorMapper.selectTestApplicantByOptions(deptNo, rcrtNo);
    }

    public void saveScores(List<EvaluateScore> scores) {
        for (EvaluateScore score : scores) {
            evaluatorMapper.upsertScore(score);
        }
    }
    // 평가위원 번호에 따른 지원자 명단
    public List<EvaluateScore> getScoresByEvaluator(int evlNo) {
        return evaluatorMapper.getScoresByEvaluator(evlNo);
    }


    // 평가 여부 추가
    public void updateEvaluations(List<ShowApplicantEvaluateScore> evaluations) {
        for (ShowApplicantEvaluateScore evaluation : evaluations) {
            evaluatorMapper.updateEvaluation(evaluation);
        }
    }

}
