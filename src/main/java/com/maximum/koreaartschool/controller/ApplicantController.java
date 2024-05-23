package com.maximum.koreaartschool.controller;

import com.maximum.koreaartschool.dao.ApplicantMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

@Slf4j
@Controller
public class ApplicantController {

    @Autowired
    private ApplicantMapper applicantDao;

    //insert메서드(원서 접수 1단계)
    @PostMapping("/submitApplyStepOne")
    public String applySubmit(@RequestParam("aplName") String aplName,
                              @RequestParam("pswd") String pswd,
                              @RequestParam("aplBirthDay") String aplBirthDay,
                              @RequestParam("gndrCode") String gndrCode,
                              @RequestParam("address") String address,
                              @RequestParam("addressDetail") String addressDetail,
                              @RequestParam("aplEmail") String aplEmail,
                              @RequestParam("aplTelNumber") String aplTelNumber,
                              @RequestParam("lastAcbg") String lastAcbg,
                              @RequestParam(value = "aplImg", required = false) MultipartFile aplImg,
                              Model model)

{

        //파일 저장 로직 (서버의 uploads 디렉토리에 저장)
        String ImgName = null;

        if (aplImg != null && !aplImg.isEmpty()) {
            ImgName = aplImg.getOriginalFilename();
            Path path = Paths.get("uploads", ImgName); // 파일 저장 경로 지정
            try {
                // 파일을 지정된 경로에 저장
                Files.write(path, aplImg.getBytes());
            } catch (IOException e) {
                e.printStackTrace(); // 파일 저장 중 에러가 발생한 경우 로그 출력
            }
        }

        model.addAttribute("msg", "등록 완료");

        applicantDao.insertApplicantStepOne(aplName, pswd,
                aplBirthDay, gndrCode, address, addressDetail,
                aplEmail ,aplTelNumber, lastAcbg, ImgName);

        return "apply_step_two";  //뷰 페이지
    }


    //테스트(원서 접수 2단계 페이지 바로 보기)
    @RequestMapping(value="/apply_pageTest")
    public String applyPageTwo(){

        return "apply_step_two"; //뷰페이지
    }


    //insert메서드(원서 접수 2단계)
    @PostMapping("/submitApplyStepTwo")
    public String applySubmit(
                              Model model)

    {

        return "redirect:main";
    }


}

