package com.maximum.KoreaArtSchool.controller;

import com.maximum.KoreaArtSchool.entity.CommCd;
import com.maximum.KoreaArtSchool.util.BinderBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class ExampleController {

    @Autowired
    private BinderBean binderBean;

    @GetMapping("/example")
    public String example(Model model) {
        // cdSe와 cd 값을 사용하여 코드 이름 가져오기
        String cdSeCdName = binderBean.getCdNm("CD0001", "10");

        // cdSe 값을 사용하여 코드 목록 가져오기
        List<CommCd> cdSeCodeList = binderBean.getCodeList("CD0001");

        // 모델에 데이터 추가
        model.addAttribute("cdSeCdName", cdSeCdName);
        model.addAttribute("cdSeCodeList", cdSeCodeList);

        // Thymeleaf 템플릿 뷰 이름 반환
        return "example";
    }
}