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

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Arrays;
import java.util.UUID;

@Slf4j
@Controller
public class ApplicantController {

    @Autowired
    private ApplicantMapper applicantMapper;

    //insert메서드(원서 접수 1단계)
    @PostMapping("/submitApplyStepOne")
    public String applySubmit(ApplicantDto applicantDto,
                              @RequestParam("aplName") String aplName,
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

        // 파일 저장 로직 (사용자의 컴퓨터에 저장)
        String ImgName = null;

        if (aplImg != null && !aplImg.isEmpty()) {
            ImgName = aplImg.getOriginalFilename();
            try {
                // 파일을 임시 폴더에 저장
                byte[] bytes = aplImg.getBytes();
                Path tempPath = Paths.get("temp/" + UUID.randomUUID().toString());
                Files.createDirectories(tempPath.getParent());
                Files.write(tempPath, bytes);
//
//
//                // 파일 경로를 문자열로 변환하여 applicantDto에 설정
//                applicantDto.setAplImg(tempPath.toString());
//
//                // 데이터베이스에 저장하고 생성된 aplNo를 받아옴
//                applicantMapper.insertApplicantStepOne(applicantDto);


                // 등록 완료 메시지 반환
                return "등록 완료";
            } catch (IOException e) {
                e.printStackTrace();
                // 파일 업로드 실패 메시지 반환
                return "파일 업로드 실패";
            }
        } else {
            // 파일 선택 경고 메시지 반환
            return "파일을 선택해주세요.";
        }
    }
}

    //insert메서드(원서 접수 2단계)
    @PostMapping("/submitApplyStepTwo")
    public String applySubmitTwo(ApplicantDto applicantDto,
                                 ApplyCoverLetterDto coverLetterDto,
                                 ApplyFileDto applyFileDto,
                                 @RequestParam(value = "dcmFile", required = false) MultipartFile dcmFile,
                                 HttpSession session) throws IOException {

        Integer aplNo = (Integer) session.getAttribute("aplNo");
        if (aplNo == null) {
            return "redirect:/submitApplyStepOne"; // aplNo가 없으면 1단계로 리다이렉트
        }



        // 파일 저장 로직 (사용자의 컴퓨터에 저장)
        String dcmFileSave = null;

        if (dcmFile != null && !dcmFile.isEmpty()) {
            dcmFileSave = dcmFile.getOriginalFilename();
            try {
                // 파일을 임시 폴더에 저장
                byte[] bytes = dcmFile.getBytes();
                Path tempPath = Paths.get("temp/" + UUID.randomUUID().toString());
                Files.createDirectories(tempPath.getParent());
                Files.write(tempPath, bytes);

                // ApplyFileDto 객체 생성 및 설정
                applyFileDto.setDcmFile(dcmFileSave);
            } catch (IOException e) {
                e.printStackTrace();
                return "파일 업로드 실패";
            }
        }

        applicantDto.setAplNo(aplNo); // 세션에서 가져온 aplNo 설정
        coverLetterDto.setAplNo(aplNo);
        applyFileDto.setAplNo(aplNo);


        applicantMapper.updateApplicantStepTwo(applicantDto);
        applicantMapper.insertApplyFile(coverLetterDto);
        applicantMapper.insertApplyCoverLetter(applyFileDto);

        return "redirect:main";  //url
    }


}

