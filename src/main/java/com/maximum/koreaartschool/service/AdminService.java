package com.maximum.koreaartschool.service;

import com.maximum.koreaartschool.dao.AdminMapper;
import com.maximum.koreaartschool.dao.EvaluatorMapper;
import com.maximum.koreaartschool.dto.Evaluator;
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

    public List<RecruitmentInformation> selectRecruitment(String mtcltn_yd_cd, String dept_cd, String rcrt_cd) {
        return adminMapper.selectRecruitment(mtcltn_yd_cd, dept_cd, rcrt_cd);
    }

    public List<StageEvaluator> selectStgEvaluators(String evl_stg_cd, int rcrt_no) {
        return adminMapper.selectStgEvaluator(evl_stg_cd, rcrt_no);
    }

    public void updateEvaluatorInfo(int evl_no, String evl_stg_cd) {

        String is_selected = "Y"; // 기본값 설정
        if ("0".equals(evl_stg_cd)) {
            is_selected = "N";
        }

        adminMapper.updateEvaluatorInfo(evl_no, evl_stg_cd, is_selected);
    }
}
