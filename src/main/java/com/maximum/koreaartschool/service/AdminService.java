package com.maximum.koreaartschool.service;

import com.maximum.koreaartschool.dao.AdminMapper;
import com.maximum.koreaartschool.dao.EvaluatorMapper;
import com.maximum.koreaartschool.dto.Evaluator;
import com.maximum.koreaartschool.dto.RCRT;
import com.maximum.koreaartschool.dto.RecruitmentInformation;
import com.maximum.koreaartschool.dto.StageEvaluator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AdminService {

    @Autowired
    private EvaluatorMapper evaluatorMapper;

    @Autowired
    private AdminMapper adminMapper;

    public List<Evaluator> getAllEvaluator() {
        return evaluatorMapper.selectAllEvaluator();
    }

    public List<RCRT> getAllRecruitment() {
        return adminMapper.getAllRecruitment();
    }

    public List<RCRT> getRcrtByOptions(String mtcltn_yd_cd, String dept_cd, String rcrt_cd) {
        return adminMapper.getRcrtByOptions(mtcltn_yd_cd, dept_cd, rcrt_cd);
    }




    public List<RecruitmentInformation> selectRecruitment(String mtcltn_yd_cd, String dept_cd, String rcrt_cd) {
        return adminMapper.selectRecruitment(mtcltn_yd_cd, dept_cd, rcrt_cd);
    }

    public List<StageEvaluator> selectStgEvaluators(int evl_stg_no, int rcrt_no) {
        return adminMapper.selectStgEvaluator(evl_stg_no, rcrt_no);
    }

}
