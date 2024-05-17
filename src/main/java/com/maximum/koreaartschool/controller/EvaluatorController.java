package com.maximum.koreaartschool.controller;

import com.maximum.koreaartschool.dto.Applicant;
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


    /* 서류평가 페이지 */
    @GetMapping("/evl_document")
    public String evlDocument(Model model) {
        List<EvaluateScore> allApplicant = applicantService.getAllApplicant();  // 전체 지원자 명단 추출
        model.addAttribute("evaluateScore", allApplicant);          // model에 전체 지원자 명단 추가
        return "evaluator/document";
    }

    @GetMapping("selectOption")
    public String print(
            Model model,
            @RequestParam(value = "year", required = false) String year,
            @RequestParam(value = "rcrt", required = false) String rcrt,
            @RequestParam(value = "dept", required = false) String dept,
            @RequestParam(value = "deptNo", required = false) String deptNo
    ) {
        System.out.println("year : " + year + " rcrt : " + rcrt + " dept : " + dept + " deptNo : " + deptNo);

        if (rcrt.equals("0") && deptNo.equals("0")) {
            List<EvaluateScore> applicantList = applicantService.getAllApplicant();
            model.addAttribute("evaluateScore", applicantList);
        } else if (deptNo.equals("10") || deptNo.equals("20")) {
            List<EvaluateScore> evaluateScoreList = applicantService.getApplicantByDeptno(deptNo);
            System.out.println(evaluateScoreList);
            model.addAttribute("evaluateScore", evaluateScoreList);

        }
        return "evaluator/document";
    }


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