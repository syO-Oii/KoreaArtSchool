package com.maximum.koreaartschool.controller;


import com.maximum.koreaartschool.model.StageApplicant;
import com.maximum.koreaartschool.service.EvaluateScoreService;
import com.maximum.koreaartschool.service.StageApplicantService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.List;

@Controller
public class StageApplicantController {

    @Autowired
    StageApplicantService stageApplicantService;

    @Autowired
    EvaluateScoreService evaluateScoreService;



    @GetMapping("/")
    public String stepevaluation() {
        return "stepevaluation";
    }

    @PostMapping("/")
    public String stepevaluation(Model model,
                                 @RequestParam("dept") String dept,
                                 @RequestParam("deptCd") String deptCd,
                                 @RequestParam("rcrtCd") String rcrtCd,
                                 @RequestParam("aplPw") String aplPw) {
        List<StageApplicant> stageApplicantList = stageApplicantService.selectStageApplicant(dept, deptCd, rcrtCd, aplPw);
        int applicantCount = stageApplicantService.stageApplicantCount(); // 응시자 수 가져오기
        model.addAttribute("stageApplicantList", stageApplicantList);
        model.addAttribute("applicantCount", applicantCount); // 모델에 응시자 수 추가
        return "stepevaluation";
    }

    // 패스 여부 업데이트를 처리하는 핸들러 메서드
    @PostMapping("/updatePass")
    public String updatePass(@RequestParam("evlStgNo") int evlStgNo,
                             @RequestParam("passYn") String passYn) {
        // 폼 데이터로부터 'evlStgNo'와 'passYn' 값을 추출하여 업데이트
        StageApplicant stageApplicant = new StageApplicant();
        stageApplicant.setEvlStgNo(evlStgNo);
        stageApplicant.setPassYn(passYn);

        // 패스 여부 업데이트를 서비스 레이어로 전달
        stageApplicantService.passUpdate(stageApplicant);

        // 업데이트 후 다시 해당 페이지로 리다이렉트
        return "redirect:/"; // 수정 필요. 다시 해당 페이지로 리다이렉트하도록 수정
    }




    @GetMapping("/finalapplicant")
    public String finalapplicant(Model model) {

        return "finalapplicant";
    }
}

