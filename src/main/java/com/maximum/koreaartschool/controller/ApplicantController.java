package com.maximum.koreaartschool.controller;

import com.maximum.koreaartschool.dao.ApplicantDao;
import com.maximum.koreaartschool.dto.ApplicantDto;
import com.maximum.koreaartschool.service.ApplicantService;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ApplicantController {

    @Autowired
    private ApplicantDao applicantDao;

    //insert메서드(원서 접수 1단계)
    @RequestMapping("/submit")
    public String applySubmit(HttpServletRequest request, Model model) {

        // 폼 데이터에서 필요한 값들을 추출하여 ApplicantDto 객체에 설정
        applicantDao.insertApplicantInt(
                request.getParameter("aplName"),
                request.getParameter("pswd"),
                request.getParameter("aplBirthDay"),
                request.getParameter("gndrCode"),
                request.getParameter("address"),
                request.getParameter("addressDetail"),
                request.getParameter("aplEmail"),
                request.getParameter("aplTelNumber"),
                request.getParameter("lastAcbg"),
                request.getParameter("aplImg")
        );

        return "apply_step_two";  //뷰 페이지
    }

    @RequestMapping(value="/apply_pageTest")
    public String applyPageTwo(){

        return "apply_step_two"; //뷰페이지
    }
}

