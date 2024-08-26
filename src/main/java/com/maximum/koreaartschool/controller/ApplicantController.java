package com.maximum.koreaartschool.controller;

import com.maximum.koreaartschool.dao.ApplicantMapper;
import com.maximum.koreaartschool.dto.ApplyFileDto;
import com.maximum.koreaartschool.dto.ApplyIntroDto;
import com.maximum.koreaartschool.service.ApplicantService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.List;

@Slf4j
@Controller
public class ApplicantController {

    @Autowired
    private ApplicantService applicantService;

    @RequestMapping(value="/main")
    public String mainPage(){
        return applicantService.mainPage();
    }

    @RequestMapping(value="/apply")
    public String applyPage(){
        return applicantService.applyPage();
    }

    @RequestMapping("/apply_pageTest")
    public String stepTwoForm() {
        return applicantService.stepTwoForm();
    }


    @RequestMapping("/jusoPopup")
    public String jusoPopupForm() {
        return applicantService.jusoPopupView();
    }

    @PostMapping("/apply_step1")
    public String applySubmitOne(@RequestParam("aplName") String aplName,
                                 @RequestParam("pswd") String pswd,
                                 @RequestParam("aplBirthDay") String aplBirthDay,
                                 @RequestParam("gndrCode") String gndrCode,
                                 @RequestParam("address") String address,
                                 @RequestParam("addressDetail") String addressDetail,
                                 @RequestParam("aplEmail") String aplEmail,
                                 @RequestParam("aplTelNumber") String aplTelNumber,
                                 @RequestParam("lastAcbg") String lastAcbg,
                                 @RequestParam(value = "aplImg", required = false) MultipartFile aplImg,
                                 Model model) throws IOException {

        return applicantService.applySubmitOne(aplName, pswd, aplBirthDay,gndrCode, address, addressDetail,
                aplEmail, aplTelNumber, lastAcbg, aplImg, model);
    }

    @GetMapping("/apply/check_email")
    public ResponseEntity<Boolean> checkEmailDuplicate(@RequestParam String aplEmail) {
        return applicantService.checkEmailDuplicate(aplEmail);
    }


    @PostMapping("/apply_step2")
    public String applySubmitTwo(@RequestParam("aplEmail") String aplEmail,
                                 @RequestParam("pswd") String pswd,
                                 @RequestParam("dept") String dept,
                                 ApplyFileDto applyFileDto,
                                 @RequestParam("deptCode") String deptCode,
                                 @RequestParam("rcrtCode") String rcrtCode,
                                 @RequestParam("yearCode") String yearCode,
                                 @RequestParam("qitemAns1") String qitemAns1,
                                 @RequestParam("qitemAns2") String qitemAns2,
                                 @RequestParam(value = "dcmNm", required = false) MultipartFile dcmNm)
            throws IOException {

        return applicantService.applySubmitTwo(aplEmail, pswd, applyFileDto, dept,
                deptCode, rcrtCode, yearCode,qitemAns1, qitemAns2, dcmNm);
    }

    @PostMapping("/apply_step1_goback")
    public String deleteSubmitOne(@RequestParam("aplEmail") String aplEmail) {
        return applicantService.deleteSubmitOne(aplEmail);
    }
}

