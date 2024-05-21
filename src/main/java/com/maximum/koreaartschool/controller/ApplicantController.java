package com.maximum.koreaartschool.controller;

import com.maximum.koreaartschool.dao.ApplicantDao;
import com.maximum.koreaartschool.dto.ApplicantDto;
import com.maximum.koreaartschool.service.ApplicantService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ApplicantController {

    @Autowired
    private ApplicantDao applicantDao;

    @PostMapping
        public String apply (@ModelAttribute ApplicantDto applicantDto, Model model){
            try {
                applicantDao.insertApplicantInt(applicantDto);
                model.addAttribute("message", "지원서가 성공적으로 제출되었습니다.");
            } catch (Exception e) {
                model.addAttribute("message", "지원서 제출 중 오류가 발생했습니다.");
                e.printStackTrace();
            }
            return "result";  // 결과를 보여줄 JSP 페이지 이름 (result.jsp)
        }
    }

