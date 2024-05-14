package com.maximum.koreaartschool.controller;

import com.maximum.koreaartschool.entity.Applicant;
import com.maximum.koreaartschool.service.ApplicantService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
@Slf4j
@RequiredArgsConstructor
public class EvaluatorController {
    private final ApplicantService applicantService;

    @GetMapping("/")
    public String index(){
        return "index";
    }

    @GetMapping("/evl_document")
    public String evlDocument(Model model) {
        System.out.println("불러오기 테스트");
        List<Applicant> applicants = applicantService.getApplicantListAll();
        model.addAttribute("applicant", applicants);
        for (Applicant applicant : applicants) {
            
            System.out.println(applicant);
        }

        return "evaluator/document";
    }
    @GetMapping("/evl_practical")
    public String evlPractical(){
        return "evaluator/practical";
    }

    @GetMapping("/evl_interview")
    public String evlInterview(){
        return "evaluator/interview";
    }
}
