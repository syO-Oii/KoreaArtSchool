package com.maximum.koreaartschool.controller;

import com.maximum.koreaartschool.dto.Applicant;
import com.maximum.koreaartschool.dto.ApplicantProcess;
import com.maximum.koreaartschool.service.ApplicantService;
import com.maximum.koreaartschool.service.EvaluatorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/evaluator")
public class EvaluatorController {

    @Autowired
    EvaluatorService evaluatorService;

    @Autowired
    ApplicantService applicantService;

    @GetMapping("/progress")
    public String list(Model model) {
        List<ApplicantProcess> applicants = applicantService.getAllApplicants();
        model.addAttribute("applicants", applicants);
        return "/evaluator/progress";
    }

    @GetMapping("/selectProgress")
    public String getApplicants(@RequestParam("department") String departmentId,
                                @RequestParam("recruitment") String recruitmentId,
                                @RequestParam("stage") String stageId,
                                Model model) {
        List<ApplicantProcess> applicants = applicantService.getApplicantsBySelect(departmentId, recruitmentId, stageId);
        model.addAttribute("applicants", applicants);
        return "/evaluator/progress";
    }
}
