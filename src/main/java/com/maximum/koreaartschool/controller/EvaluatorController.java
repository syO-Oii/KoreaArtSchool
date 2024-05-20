package com.maximum.koreaartschool.controller;

import com.maximum.koreaartschool.dto.Applicant;
import com.maximum.koreaartschool.dto.ApplicantEvaluate;
import com.maximum.koreaartschool.dto.ApplicantProcess;
import com.maximum.koreaartschool.dto.EvaluateScore;
import com.maximum.koreaartschool.service.ApplicantService;
import com.maximum.koreaartschool.service.EvaluatorService;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/evaluator")
@Slf4j
@RequiredArgsConstructor
public class EvaluatorController {
    int evlNo = 1;  // 해당 페이지 심사위원 번호
    int evlStgCd;

    @Autowired
    EvaluatorService evaluatorService;

    @Autowired
    ApplicantService applicantService;

    @GetMapping("")
    public String main() {
        return "/evaluator/main";
    }

    @GetMapping("/progress")
    public String list(Model model) {
        List<ApplicantProcess> applicants = evaluatorService.getAllApplicants();
        model.addAttribute("applicants", applicants);
        return "/evaluator/progress";
    }

    @GetMapping("/selectProgress")
    public String getApplicants(@RequestParam("department") String departmentId,
                                @RequestParam("recruitment") String recruitmentId,
                                @RequestParam("stage") String stageId,
                                Model model) {
        List<ApplicantProcess> applicants = evaluatorService.getApplicantsBySelect(departmentId, recruitmentId, stageId);
        model.addAttribute("applicants", applicants);
        return "/evaluator/progress";
    }


    /* ---------- 서류평가 페이지 시작 ---------- */

    // 서류평가 초기화면, (평가위원에게 속한) 전체 지원자 명단 조회
    @GetMapping("/evl_document")
    public String evlDocument(Model model) {
        evlNo = 1;      // 심사위원 1번이라고 가정한 더미데이터
        evlStgCd = 10;  // 서류심사단계, 각 단계마다 이 변수 값을 넣어줘야함
        List<ApplicantEvaluate> asEvaluatorApplicants = evaluatorService.getEvaluatorApplicants(evlNo);  // 전체 지원자 명단 추출
        model.addAttribute("evaluateApplicantScore", asEvaluatorApplicants);          // model에 전체 지원자 명단 추가
        return "evaluator/document";
    }

    @GetMapping("selectOption")
    public String print(
            Model model,
            //@RequestParam(value = "year", required = false) String year,
            @RequestParam(value = "rcrt", required = false) String rcrt,
            //@RequestParam(value = "dept", required = false) String dept,
            @RequestParam(value = "deptNo", required = false) String deptNo
    ) {
                                             // [더미]평가위원 1번 페이지로 가정
        int deptNum = Integer.parseInt(deptNo);
        int rcrtNum = Integer.parseInt(rcrt);
        List<ApplicantEvaluate> asEvaluatorApplicants;  // 평가위원별 지원자 명단
        if (rcrt.equals("0") && deptNo.equals("0")) {
            asEvaluatorApplicants = evaluatorService.getEvaluatorApplicants(evlNo);     // 평가위원이 맡은 모든 학생 출력
        } else if (rcrt.equals("0") && !deptNo.equals("0")) {
            asEvaluatorApplicants = evaluatorService.getApplicantByDeptno(deptNum);     // 학과 별 평가위원이 맡은 모든 학생 출력
        } else if (!rcrt.equals("0") && deptNo.equals("0")) {
            asEvaluatorApplicants = evaluatorService.getApplicantByRcrtNo(rcrtNum);     // 모집 전형 별 평가위원이 맡은 모든 학생 출력
        } else {
            asEvaluatorApplicants = evaluatorService.getApplicantByOptions(deptNum, rcrtNum);   //  옵션 선택값에 따른 평가위원이 맡은 모든 학생 출력
        }
        model.addAttribute("evaluateApplicantScore", asEvaluatorApplicants);
        return "evaluator/document";
    }

    @PostMapping("insertScore")
    public String insertScore(
            Model model,
            @RequestParam("applicantCount") int applicantCount,
            @RequestParam Map<String, String> allParams) {
        List<EvaluateScore> scores = new ArrayList<>();
        for (int i = 0; i < applicantCount; i++) {
            String checked = allParams.get("apl_ck_" + i);
            if (checked != null) { // 체크 값이 null이 아닌 경우에만 처리
                if (checked.equals("on")) {
                    // 메소드를 사용하여 score 값 입력
                    scores.add(createEvaluateScore(allParams, i, 1));
                    scores.add(createEvaluateScore(allParams, i, 2));
                } else if (checked.isEmpty()) {
                }
            }
        }
        evaluatorService.saveScores(scores);

        List<ApplicantEvaluate> asEvaluatorApplicants = evaluatorService.getEvaluatorApplicants(evlNo);
        model.addAttribute("evaluateApplicantScore", asEvaluatorApplicants);

        return "evaluator/document";
    }
    /* ---------- 서류평가 페이지 종료 ---------- */

    /* 실기평가 페이지 */
    @GetMapping("/evl_practical")
    public String evlPractical() {
        return "evaluator/practical";
    }

    /* 면접평가 페이지 */
    @GetMapping("/evl_interview")
    public String evlInterview() {
        return "evaluator/interview";
    }


    private EvaluateScore createEvaluateScore(Map<String, String> params, int index, int evlQNo) {
        EvaluateScore score = new EvaluateScore();
        score.setEvl_Stg_No(Integer.parseInt(params.get("evl_stg_no_" + index)));
        score.setRcrt_No(Integer.parseInt(params.get("rcrt_no_" + index)));
        score.setEvl_No(Integer.parseInt(params.get("evl_no_" + index)));
        score.setApl_No(Integer.parseInt(params.get("apl_no_" + index)));
        score.setApl_Nm(params.get("apl_nm_" + index));
        score.setDept_Cd(Integer.parseInt(params.get("dept_cd_" + index)));
        score.setEVLQ_NO(evlQNo);
        score.setScore(Integer.parseInt(params.get("score" + evlQNo + "_" + index)));
        return score;
    }
}