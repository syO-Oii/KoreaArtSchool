package com.maximum.koreaartschool.controller;

import com.maximum.koreaartschool.entity.CommCd;
//import com.maximum.koreaartschool.util.BinderBean;
import com.maximum.koreaartschool.service.CommCdService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class ExampleController {

    @Autowired
    private CommCdService commCdService;

    @GetMapping("/example")
    public String example(Model model) {
        // cdSe와 cd 값을 사용하여 코드 이름 가져오기
        String cdSeCdName = commCdService.getCdNmByCdSeAndCd("CD0001", "10");

        // cdSe 값을 사용하여 코드 목록 가져오기
        List<CommCd> cdSeCodeList = commCdService.getCommCdsByCdSe("CD0001");

        // cdSe 값을 사용하여 코드 목록 가져오기
        List<CommCd> cdACList = commCdService.getCommCdsByCdSe("AC0002");

        // 모델에 데이터 추가
        model.addAttribute("cdSeCdName", cdSeCdName);
        model.addAttribute("cdSeCodeList", cdSeCodeList);
        model.addAttribute("cdACList", cdACList);

        // Thymeleaf 템플릿 뷰 이름 반환
        return "example";
    }
}
