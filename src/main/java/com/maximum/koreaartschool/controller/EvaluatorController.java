package com.maximum.koreaartschool.controller;

import com.maximum.koreaartschool.dto.Applicant;
import com.maximum.koreaartschool.dto.ApplicantEvaluate;
import com.maximum.koreaartschool.dto.ApplicantProcess;
import com.maximum.koreaartschool.dto.EvaluateScore;
import com.maximum.koreaartschool.service.ApplicantService;
import com.maximum.koreaartschool.service.EvaluatorService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/evaluator")
@Slf4j
@RequiredArgsConstructor
public class EvaluatorController {
    int evlNo;  // 해당 페이지 심사위원 번호
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
        List<ApplicantEvaluate> asEvaluatorApplicants = applicantService.getEvaluatorApplicants(evlNo);  // 전체 지원자 명단 추출
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
        evlNo = 1;
        int deptNum = Integer.parseInt(deptNo);
        int rcrtNum = Integer.parseInt(rcrt);
        List<ApplicantEvaluate> asEvaluatorApplicants;  // 평가위원별 지원자 명단
        if (rcrt.equals("0") && deptNo.equals("0")) {
            asEvaluatorApplicants = applicantService.getEvaluatorApplicants(evlNo);     // 평가위원이 맡은 모든 학생 출력
        } else if (rcrt.equals("0") && !deptNo.equals("0")) {
            asEvaluatorApplicants = applicantService.getApplicantByDeptno(deptNum);     // 학과 별 평가위원이 맡은 모든 학생 출력
        } else if (!rcrt.equals("0") && deptNo.equals("0")) {
            asEvaluatorApplicants = applicantService.getApplicantByRcrtNo(rcrtNum);     // 모집 전형 별 평가위원이 맡은 모든 학생 출력
        } else {
            asEvaluatorApplicants = applicantService.getApplicantByOptions(deptNum, rcrtNum);   //  옵션 선택값에 따른 평가위원이 맡은 모든 학생 출력
        }
        model.addAttribute("evaluateApplicantScore", asEvaluatorApplicants);
        return "evaluator/document";
    }

    @GetMapping("insertScore")
    public String insertScore(){
        
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

}