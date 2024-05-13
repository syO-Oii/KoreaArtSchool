package com.maximum.koreaartschool.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class EvaluatorController {
    @GetMapping("/")
    public String index(){
        return "index";
    }

    @GetMapping("/evl_document")
    public String evlDocument(){
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
