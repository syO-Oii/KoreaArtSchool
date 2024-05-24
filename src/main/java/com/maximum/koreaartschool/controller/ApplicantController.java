package com.maximum.koreaartschool.controller;

import com.maximum.koreaartschool.dao.ApplicantMapper;
import com.maximum.koreaartschool.dto.ApplicantDto;
import com.maximum.koreaartschool.dto.ApplyFileDto;
import com.maximum.koreaartschool.dto.ApplyCoverLetterDto;
import jakarta.servlet.http.HttpSession;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.UUID;

@Slf4j
@Controller
public class ApplicantController {

    @Autowired
    private ApplicantMapper applicantMapper;

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
                              Model model) throws IOException {

        // 원본 파일명
        String originalFilename = aplImg.getOriginalFilename();

        // 저장할 파일 이름 설정 (여기서는 원본 파일명 그대로 사용)
        String saveName = originalFilename;

        // 파일 저장 경로 설정
        String uploadPath = "C:\\upload"; // application.properties에서 설정한 경로를 사용

        // 파일 저장
        File saveFile = new File(uploadPath + File.separator + saveName);
        aplImg.transferTo(saveFile);

        // 데이터베이스에 정보 저장
        // 데이터베이스에 정보 저장
        applicantMapper.insertApplicantStepOne(aplName, pswd,
                aplBirthDay, gndrCode, address, addressDetail,
                aplEmail, aplTelNumber, lastAcbg, saveName);


        // 이메일과 비밀번호를 모델에 추가하여 2단계로 전달
        model.addAttribute("aplEmail", aplEmail);
        model.addAttribute("pswd", pswd);

        return "apply_step_two";  // 뷰 페이지
    }




    //insert메서드(원서 접수 2단계)
    @PostMapping("/submitApplyStepTwo")
    public String applySubmitTwo(@RequestParam("aplEmail") String aplEmail,   //1단계에서 model로 전달
                                 @RequestParam("pswd") String pswd,           //1단계에서 model로 전달
                                 ApplyCoverLetterDto coverLetterDto,
                                 ApplyFileDto applyFileDto,
                                 @RequestParam("dept") String dept,
                                 @RequestParam("deptCode") String deptCode,
                                 @RequestParam("rcrtCode") String rcrtCode,
                                 @RequestParam(value = "dcmFile", required = false) MultipartFile dcmFile)
            throws IOException {

        // 원본 파일명
        String originalFilename = dcmFile.getOriginalFilename();

        // 저장할 파일 이름 설정 (여기서는 원본 파일명 그대로 사용)
        String saveName = originalFilename;

        // 파일 저장 경로 설정
        String uploadPath = "C:\\upload"; // application.properties에서 설정한 경로를 사용

        // 파일 저장
        File saveFile = new File(uploadPath + File.separator + saveName);
        dcmFile.transferTo(saveFile);

        // 이메일과 비밀번호로 기존 데이터 조회하여 'aplNo' 가져오기
        Integer aplNo = applicantMapper.findAplNoByEmailAndPassword(aplEmail, pswd);

        // 오류 처리: aplNo가 null이거나 aplEmail이 비어있는 경우
        if (aplNo == null || aplEmail == null || aplEmail.isEmpty()) {
            throw new RuntimeException("aplNo 또는 aplEmail 값이 Null: " + aplEmail);

        }log.info("aplNo를 가져오는 단계의 결과: aplNo = " + aplNo + ", aplEmail = " + aplEmail);

        applicantMapper.updateApplicantStepTwo(aplNo, dept, deptCode, rcrtCode);

        // 매개변수 변경: aplNo 추가
        applyFileDto.setAplNo(aplNo);
        coverLetterDto.setAplNo(aplNo);

        applicantMapper.insertApplyFile(coverLetterDto);
        applicantMapper.insertApplyCoverLetter(applyFileDto);

        return "redirect:main";  // url
    }

}

