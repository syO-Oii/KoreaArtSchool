package com.maximum.koreaartschool.service;

import com.maximum.koreaartschool.dao.ApplicantMapper;
import com.maximum.koreaartschool.dto.ApplyFileDto;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;

@Slf4j
@Service
public class ApplicantService {

    @Autowired
    private ApplicantMapper applicantMapper;


    public String mainPage(){
        return "main";
    }

    public String applyPage(){
        return "apply_step_one";
    }

    //testPage
    public String stepTwoForm() {
        return "apply_step_two";
    }

    public String jusoPopupView() {
        return "apply_jusoPopup";
    }

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
        log.info("지원자명: " + aplName);
        log.info("비밀번호: " + pswd);
        log.info("성별코드: " + gndrCode);
        log.info("주소: " + address);
        log.info("상세주소: " + addressDetail);
        log.info("이메일: " + aplEmail);
        log.info("휴대폰번호: " + aplTelNumber);
        log.info("최종학력: " + lastAcbg);
        log.info("이미지파일명: " + aplImg);


        String saveName = null;
        if (aplImg != null && !aplImg.isEmpty()) {
            String originalFilename = aplImg.getOriginalFilename();
            log.info("증명사진 파일명: " + originalFilename);
            saveName = originalFilename;
            String uploadPath = "C:\\upload";
            File saveFile = new File(uploadPath + File.separator + saveName);
            aplImg.transferTo(saveFile);
        }


        applicantMapper.insertApplicantStepOne(aplName, pswd,
                aplBirthDay, gndrCode, address, addressDetail,
                aplEmail, aplTelNumber, lastAcbg, saveName);


        model.addAttribute("aplEmail", aplEmail);
        model.addAttribute("pswd", pswd);

        return "apply_step_two";
    }

    public ResponseEntity<Boolean> checkEmailDuplicate(@RequestParam String aplEmail) {
        boolean isDuplicate = applicantMapper.checkEmailDuplicate(aplEmail) > 0;
        return ResponseEntity.ok(isDuplicate);
    }

    public String applySubmitTwo(@RequestParam("aplEmail") String aplEmail,
                                 @RequestParam("pswd") String pswd,
                                 ApplyFileDto applyFileDto,
                                 @RequestParam("dept") String dept,
                                 @RequestParam("deptCode") String deptCode,
                                 @RequestParam("rcrtCode") String rcrtCode,
                                 @RequestParam("yearCode") String yearCode,
                                 @RequestParam("qitemAns1") String qitemAns1,
                                 @RequestParam("qitemAns2") String qitemAns2,
                                 @RequestParam(value = "dcmNm", required = false) MultipartFile dcmNm)
            throws IOException {

        log.info("이메일: " + aplEmail);
        log.info("비밀번호: " + pswd);
        log.info("계열코드: " + dept);
        log.info("학과코드: " + deptCode);
        log.info("문항1 답변: " + qitemAns1);
        log.info("문항2 답변: " + qitemAns2);

        String originalFilename = dcmNm.getOriginalFilename();
        log.info("제출서류 파일명: " + originalFilename);
        String saveName = originalFilename;
        String uploadPath = "C:\\upload";

        File saveFile = new File(uploadPath + File.separator + saveName);
        dcmNm.transferTo(saveFile);
        log.info("File saved: " + saveFile.getAbsolutePath());

        Integer aplNo = applicantMapper.findAplNoByEmailAndPassword(aplEmail, pswd);
        log.info("aplNo: " + aplNo);

        if (aplNo == null || aplEmail == null || aplEmail.isEmpty()) {
            throw new RuntimeException("aplNo가 null이거나 aplEmail이 비어있을 수 있음. aplEmail: " + aplEmail);
        }


        applyFileDto.setAplNo(aplNo);

        int rcrtNo = 0;

        int deptCode1 = Integer.parseInt(deptCode);
        int yearCode1 = Integer.parseInt(yearCode);
        int rcrtCode1 = Integer.parseInt(rcrtCode);

        rcrtNo = getRcrtNo(deptCode1, yearCode1, rcrtCode1);

        applicantMapper.updateApplicantStepTwo(rcrtNo, aplNo, dept, deptCode, rcrtCode);
        applicantMapper.insertApplyFile(aplNo, saveName);
        applicantMapper.insertApplyIntro(rcrtNo, aplNo, qitemAns1, qitemAns2);
        return "redirect:main";
    }

    public String deleteSubmitOne(@RequestParam("aplEmail") String aplEmail) {
        applicantMapper.deleteApplicantStepOne(aplEmail);
        log.info("aplEmail: " + aplEmail + "의 지원자에 대한 인적사항 데이터 '삭제' 실행");
        return "redirect:apply";
    }

    public int getRcrtNo(int deptCode, int yearCode, int rcrtCode) {
        int rcrtNo = -1;

        log.info("getRcrtNo메서드 start");
        log.info("deptCode: " + deptCode);
        log.info("yearCode: " + yearCode);
        log.info("rcrtCode: " + rcrtCode);

        if (yearCode == 40) {
            if (deptCode == 10) {
                if (rcrtCode == 10) {
                    rcrtNo = 37;
                } else if (rcrtCode == 20) {
                    rcrtNo = 38;
                }
            } else if (deptCode == 20) {
                if (rcrtCode == 10) {
                    rcrtNo = 39;
                } else if (rcrtCode == 20) {
                    rcrtNo = 40;
                }
            } else if (deptCode == 30) {
                if (rcrtCode == 10) {
                    rcrtNo = 41;
                } else if (rcrtCode == 20) {
                    rcrtNo = 42;
                }
            } else if (deptCode == 40) {
                if (rcrtCode == 10) {
                    rcrtNo = 43;
                } else if (rcrtCode == 20) {
                    rcrtNo = 44;
                }
            } else if (deptCode == 50) {
                if (rcrtCode == 10) {
                    rcrtNo = 45;
                } else if (rcrtCode == 20) {
                    rcrtNo = 46;
                }
            } else if (deptCode == 60) {
                if (rcrtCode == 10) {
                    rcrtNo = 47;
                } else if (rcrtCode == 20) {
                    rcrtNo = 48;
                }
            }
        }

        if (rcrtNo == -1) {
            throw new IllegalArgumentException("조건식을 만족하는 rcrtNo 값이 존재하지 않습니다.");
        }

        log.info("최종 rcrtNo: "+ rcrtNo);
        return rcrtNo;
    }
}
