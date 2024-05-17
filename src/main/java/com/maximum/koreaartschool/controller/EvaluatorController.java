package com.maximum.koreaartschool.controller;

<<<<<<< HEAD
import com.maximum.koreaartschool.dto.Applicant;
import com.maximum.koreaartschool.dto.ApplicantProcess;
import com.maximum.koreaartschool.service.ApplicantService;
import com.maximum.koreaartschool.service.EvaluatorService;
=======
import com.maximum.koreaartschool.entity.Applicant;
import com.maximum.koreaartschool.entity.EvaluateScore;
import com.maximum.koreaartschool.service.ApplicantService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
>>>>>>> origin/🛠️develop
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
<<<<<<< HEAD
import org.springframework.web.bind.annotation.RequestMapping;
=======
>>>>>>> origin/🛠️develop
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
<<<<<<< HEAD
@RequestMapping("/evaluator")
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
=======
@Slf4j
@RequiredArgsConstructor
public class EvaluatorController {
    /* 평가위원 페이지 컨트롤러  */
    private final ApplicantService applicantService;

    /* 평가위원 페이지 초기 화면 */
    @GetMapping("/123")
    public String index(){
        return "index";
    }
    /* 서류평가 페이지 */
    @GetMapping("/evl_document")
    public String evlDocument(Model model) {
        List<Applicant> allApplicant = applicantService.getAllApplicant();  // 전체 지원자 명단 추출
        //List<Applicant> getEvaluatorStageApplicant = applicantService.getEvaluatorStageApplicant(evaluatorNum, evaluateStage, applicantNum);
        model.addAttribute("applicant", allApplicant);          // model에 전체 지원자 명단 추가
        return "evaluator/document";
    }

    @GetMapping("selectOption")
    public String print(
            Model model,
            @RequestParam(value="year", required = false)String year,
            @RequestParam(value="rcrt", required = false)String rcrt,
            @RequestParam(value="dept", required = false)String dept,
            @RequestParam(value="deptNo", required = false)String deptNo
    ){
        if(rcrt.equals("0") && deptNo.equals("0")){
            List<Applicant> applicantList = applicantService.getAllApplicant();
            model.addAttribute("applicant", applicantList);
        } else if (rcrt.equals("0") && !deptNo.equals("0")){
            List<EvaluateScore> evaluateScoreList = applicantService.getApplicantByDeptno(Integer.parseInt(deptNo));
            model.addAttribute("applicant", evaluateScoreList);
        }
        // 옵션 선택에 의한 지원자 명단
        //List<EvaluateScore> selectedApplicant = applicantService.getSelectedApplicant(year, rcrt, dept, deptNo);


        return "evaluator/document";
    }




    /* 실기평가 페이지 */
    @GetMapping("/evl_practical")
    public String evlPractical(){
        return "evaluator/practical";
    }

    /* 면접평가 페이지 */
    @GetMapping("/evl_interview")
    public String evlInterview(){
        return "evaluator/interview";
    }


>>>>>>> origin/🛠️develop
}
