package com.maximum.koreaartschool.service;

import com.maximum.koreaartschool.dao.EvaluatorMapper;
import com.maximum.koreaartschool.dto.ApplicantProcess;
import com.maximum.koreaartschool.dto.Evaluator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EvaluatorService {

    @Autowired
    private EvaluatorMapper evaluatorMapper;

    public List<ApplicantProcess> getAllApplicants() {
        return evaluatorMapper.selectAllApplicants();
    }

    public List<ApplicantProcess> getApplicantsBySelect(String departmentId, String recruitmentId, String stageId) {
        return evaluatorMapper.findApplicants(departmentId, recruitmentId, stageId);
    }

    public List<Evaluator> getAllEvaluator() {
        return evaluatorMapper.selectAllEvaluator();
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

}
