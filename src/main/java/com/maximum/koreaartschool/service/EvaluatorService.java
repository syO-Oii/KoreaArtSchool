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

    public List<Evaluator> getEvaluatorsBySelect(String departmentId, String is_selected) {
        if (departmentId == null && is_selected == null) {
            return evaluatorMapper.selectAllEvaluator();
        } else if (departmentId == null) {
            return evaluatorMapper.findByIsSelected(is_selected);
        } else if (is_selected == null) {
            return evaluatorMapper.findByDepartmentId(departmentId);
        } else {
            return evaluatorMapper.findByDepartmentIdAndIsSelected(departmentId, is_selected);
        }
    }

    public void deleteEvaluator(int evl_no) {
        evaluatorMapper.deleteEvaluator(evl_no);
    }

    public void insertEvaluator(Evaluator evaluator) {
        evaluatorMapper.insertEvaluator(evaluator);
    }

    public void updateEvaluator(Evaluator evaluator) {
        evaluatorMapper.updateEvaluator(evaluator);
    }

    /* 조건별 평가위원 담당 지원자 목록 불러오기 */

    // 평가위원 담당 지원자 전체 조회
    @Transactional
    public List<ViewApplicantEvaluate> getEvaluatorApplicants(int evlNo, int evlStgCd){
        return evaluatorMapper.selectEvaluatorApplicants(evlNo, evlStgCd);
    }

    // 학과별 평가위원 담당 지원자 전체 조회
    @Transactional
    public List<ViewApplicantEvaluate> getApplicantByDeptno(int evlNo, int evlStgCd, int deptNo){
        return evaluatorMapper.selectApplicantByDeptno(evlNo, evlStgCd, deptNo);
    }

    // 전형별 평가위원 담당 지원자 전체 조회
    @Transactional
    public List<ViewApplicantEvaluate> getApplicantByRcrtNo(int evlNo, int evlStgCd, int rcrtNo){
        return evaluatorMapper.selectApplicantByRcrtNo(evlNo, evlStgCd, rcrtNo);
    }

    // 학과 및 전형별 평가위원 담당 지원자 전체 조회
    @Transactional
    public List<ViewApplicantEvaluate> getApplicantByOptions(int evlNo, int evlStgCd, int deptNo, int rcrtNo){
        return evaluatorMapper.selectApplicantByOptions(evlNo, evlStgCd, deptNo, rcrtNo);
    }

    /* 조건 별 평가위원 담당 지원자 목록 불러오기 끝 */

    // 평가 점수 합계 테이블 업데이트
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
    public List<StageEvaluator> getStageEvaluatorBySelected(){
        return evaluatorMapper.getStageEvaluatorBySelected();
    }


}
