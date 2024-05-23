package com.maximum.koreaartschool.controller;


import com.maximum.koreaartschool.entity.CommCd;
import com.maximum.koreaartschool.model.StageApplicant;
import com.maximum.koreaartschool.service.CommCdService;
import com.maximum.koreaartschool.service.StageApplicantService;
import com.maximum.koreaartschool.service.StageApplicantService2;
import com.maximum.koreaartschool.service.StageApplicantService3;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@Slf4j
public class StageApplicantController {

    @Autowired
    StageApplicantService stageApplicantService;

    @Autowired
    StageApplicantService2 stageApplicantService2;

    @Autowired
    StageApplicantService3 stageApplicantService3;

    @Autowired
    private CommCdService commCdService;

    @GetMapping("/admin/stepevaluation1")
    public String stepevaluation() {
        return "/admin/stepevaluation1";
    }

    @PostMapping("/admin/stepevaluation1")
    public String stepevaluation(Model model,
                                 @RequestParam("dept") String dept,
                                 @RequestParam("deptCd") String deptCd,
                                 @RequestParam("rcrtCd") String rcrtCd,
                                 @RequestParam("yearCd") String yearCd) {
        List<StageApplicant> stageApplicantList = stageApplicantService.selectStageApplicant(dept, deptCd, rcrtCd, yearCd);

        model.addAttribute("stageApplicantList", stageApplicantList);



        return "/admin/stepevaluation1";
    }

    @PostMapping("/stageApplicantCount")
    public String stageApplicantCount( @RequestParam("yearCd") String yearCd) {
        stageApplicantService.stageApplicantCount(yearCd);
        return "redirect:/admin/stepevaluation1";
    }

    // 패스 여부 업데이트를 처리하는  메서드
    @PostMapping("/updatePass")
    public String updatePass(@RequestParam("firstPassYn") String firstPassYn,
                             @RequestParam("aplNo") int aplNo) {
        // 폼 데이터로부터 'evlStgNo'와 'passYn' 값을 추출하여 업데이트
        StageApplicant stageApplicant = new StageApplicant();
        stageApplicant.setFirstPassYn(firstPassYn);
        stageApplicant.setAplNo(aplNo);

        // 패스 여부 업데이트를 서비스 레이어로 전달
        stageApplicantService.passUpdate(stageApplicant);
        // 업데이트 후 다시 해당 페이지로 리다이렉트
        return "redirect:/admin/stepevaluation1"; // 수정 필요. 다시 해당 페이지로 리다이렉트하도록 수정
    }


    @PostMapping("/executeEvaluation")
    public String executeEvaluation(@RequestParam("rcrtNo") int rcrtNo,
                                    @RequestParam("rcrtPscp") int rcrtPscp) {
        log.info("rcrtNo: {}", rcrtNo);
        stageApplicantService.processCandidates(rcrtNo,rcrtPscp);
        return "redirect:/admin/stepevaluation1";
    }




    @GetMapping("/admin/stepevaluation2")
    public String stepevaluation2() {
        return "/admin/stepevaluation2";
    }

    @PostMapping("/admin/stepevaluation2")
    public String stepevaluation2(Model model,
                                  @RequestParam("dept") String dept,
                                  @RequestParam("deptCd") String deptCd,
                                  @RequestParam("rcrtCd") String rcrtCd,
                                  @RequestParam("yearCd") String yearCd) {
        List<StageApplicant> stageApplicantList = stageApplicantService2.selectStageApplicant(dept, deptCd, rcrtCd, yearCd);
        int applicantCount = stageApplicantService2.stageApplicantCount(); // 응시자 수 가져오기
        model.addAttribute("stageApplicantList", stageApplicantList);
        model.addAttribute("applicantCount", applicantCount); // 모델에 응시자 수 추가
        return "/admin/stepevaluation2";
    }

    // 패스 여부 업데이트를 처리하는 핸들러 메서드
    @PostMapping("/updatePass2")
    public String updatePass2(@RequestParam("secondPassYn") String secondPassYn,
                             @RequestParam("aplNo") int aplNo) {
        // 폼 데이터로부터 'evlStgNo'와 'passYn' 값을 추출하여 업데이트
        StageApplicant stageApplicant = new StageApplicant();
        stageApplicant.setSecondPassYn(secondPassYn);
        stageApplicant.setAplNo(aplNo);

        // 패스 여부 업데이트를 서비스 레이어로 전달
        stageApplicantService2.passUpdate(stageApplicant);
        // 업데이트 후 다시 해당 페이지로 리다이렉트
        return "redirect:/admin/stepevaluation2"; // 수정 필요. 다시 해당 페이지로 리다이렉트하도록 수정
    }


    @PostMapping("/executeEvaluation2")
    public String executeEvaluation2(@RequestParam("rcrtNo") int rcrtNo,
                                     @RequestParam("rcrtPscp") int rcrtPscp) {
        log.info("rcrtNo: {}", rcrtNo);
        stageApplicantService2.processCandidates(rcrtNo,rcrtPscp);
        return "redirect:/admin/stepevaluation2";
    }


    @GetMapping("/admin/stepevaluation3")
    public String stepevaluation3() {
        return "/admin/stepevaluation3";
    }


    @PostMapping("/admin/stepevaluation3")
    public String stepevaluation3(Model model,
                                  @RequestParam("dept") String dept,
                                  @RequestParam("deptCd") String deptCd,
                                  @RequestParam("rcrtCd") String rcrtCd,
                                  @RequestParam("yearCd") String yearCd) {
        List<StageApplicant> stageApplicantList = stageApplicantService3.selectStageApplicant(dept, deptCd, rcrtCd, yearCd);
        int applicantCount = stageApplicantService3.stageApplicantCount(); // 응시자 수 가져오기
        model.addAttribute("stageApplicantList", stageApplicantList);
        model.addAttribute("applicantCount", applicantCount); // 모델에 응시자 수 추가
        return "/admin/stepevaluation3";
    }

    // 패스 여부 업데이트를 처리하는 핸들러 메서드
    @PostMapping("/updatePass3")
    public String updatePass3(@RequestParam("finalPassYn") String finalPassYn,
                              @RequestParam("aplNo") int aplNo) {
        // 폼 데이터로부터 'evlStgNo'와 'passYn' 값을 추출하여 업데이트
        StageApplicant stageApplicant = new StageApplicant();
        stageApplicant.setFinalPassYn(finalPassYn);
        stageApplicant.setAplNo(aplNo);

        // 패스 여부 업데이트를 서비스 레이어로 전달
        stageApplicantService3.passUpdate(stageApplicant);
        // 업데이트 후 다시 해당 페이지로 리다이렉트
        return "redirect:/admin/stepevaluation3"; // 수정 필요. 다시 해당 페이지로 리다이렉트하도록 수정
    }


    @PostMapping("/executeEvaluation3")
    public String executeEvaluation3(@RequestParam("rcrtNo") int rcrtNo,
                                     @RequestParam("rcrtPscp") int rcrtPscp) {
        log.info("rcrtNo: {}", rcrtNo);
        stageApplicantService3.processCandidates(rcrtNo,rcrtPscp);
        return "redirect:/admin/stepevaluation3";
    }

}

