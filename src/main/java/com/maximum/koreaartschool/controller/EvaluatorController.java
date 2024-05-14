package com.maximum.koreaartschool.controller;

import com.maximum.koreaartschool.service.ApplicantService;
import com.maximum.koreaartschool.service.EvaluatorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/evaluator")
public class EvaluatorController {

    @Autowired
    EvaluatorService evaluatorService;

    @Autowired
    ApplicantService applicantService;

    @GetMapping("/progress")
    public String list(Model model) {
        model.addAttribute("applicantList", applicantService.getAllApplicant());
        return "/evaluator/progress";
    }
}
