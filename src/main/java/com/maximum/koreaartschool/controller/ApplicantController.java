package com.maximum.koreaartschool.controller;

import com.maximum.koreaartschool.dto.ApplicantDto;
import com.maximum.koreaartschool.service.ApplicantService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ApplicantController {

    @Autowired
    private ApplicantService applicantService;

    @PostMapping("/apply")
    public String apply(ApplicantDto applicantDto, Model model) {

        // 서비스로 전달하여 저장
        boolean isSuccess = applicantService.saveApplicant(applicantDto);

        // 결과에 따라 다른 뷰 반환
        if (isSuccess) {
            model.addAttribute("message", "지원이 완료되었습니다.");
            return "success"; // 성공 시 success.html로 이동
        } else {
            model.addAttribute("message", "지원에 실패했습니다.");
            return "error"; // 실패 시 error.html로 이동
        }
    }
}
