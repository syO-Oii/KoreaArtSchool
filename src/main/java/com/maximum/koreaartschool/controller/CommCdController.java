package com.maximum.koreaartschool.controller;

import com.maximum.koreaartschool.dto.CommCd;
import com.maximum.koreaartschool.service.CommCdService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class CommCdController {

    @Autowired
    private CommCdService commCdService;

    @GetMapping("/example")
    public String example(Model model) {
        String cdSeCdName = commCdService.getCdNmByCdSeAndCd("CD0001", "10");
        List<CommCd> cdSeCodeList = commCdService.getCommCdsByCdSe("CD0001");
        List<CommCd> cdACList = commCdService.getCommCdsByCdSe("AC0002");

        model.addAttribute("cdSeCdName", cdSeCdName);
        model.addAttribute("cdSeCodeList", cdSeCodeList);
        model.addAttribute("cdACList", cdACList);

        return "example";
    }
}