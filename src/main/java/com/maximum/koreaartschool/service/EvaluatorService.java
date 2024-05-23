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
    public List<ViewApplicantEvaluate> getEvaluatorApplicants(int evlNo, int evlStgCd){
        return evaluatorMapper.selectEvaluatorApplicants(evlNo, evlStgCd);
    }

    @Transactional
    public List<ViewApplicantEvaluate> getApplicantByDeptno(int deptNo){
        return evaluatorMapper.selectApplicantByDeptno(deptNo);
    }

    /*@Transactional
    public List<ViewApplicantEvaluate> getTestApplicantByDeptno(int deptNo){
        return evaluatorMapper.selectTestApplicantByDeptno(deptNo);
    }*/

    @Transactional
    public List<ViewApplicantEvaluate> getApplicantByRcrtNo(int rcrtNo){
        return evaluatorMapper.selectApplicantByRcrtNo(rcrtNo);
    }

    /*@Transactional
    public List<ViewApplicantEvaluate> getTestApplicantByRcrtNo(int rcrtNo){
        return evaluatorMapper.selectTestApplicantByRcrtNo(rcrtNo);
    }*/

    @Transactional
    public List<ViewApplicantEvaluate> getApplicantByOptions(int deptNo, int rcrtNo){
        return evaluatorMapper.selectApplicantByOptions(deptNo, rcrtNo);
    }

   /* @Transactional
    public List<ViewApplicantEvaluate> getTestApplicantByOptions(int deptNo, int rcrtNo){
        return evaluatorMapper.selectTestApplicantByOptions(deptNo, rcrtNo);
    }*/

    @Transactional
    public void updateEvaluateScoreSum(){
        evaluatorMapper.updateEvaluateScoreSum();
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
    public void updateEvaluations(List<ViewApplicantEvaluate> evaluations) {
        for (ViewApplicantEvaluate evaluation : evaluations) {
            evaluatorMapper.updateEvaluation(evaluation);
        }
    }


}
