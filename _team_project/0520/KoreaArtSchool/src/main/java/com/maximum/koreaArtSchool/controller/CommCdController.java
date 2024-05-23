package com.maximum.koreaArtSchool.controller;

import com.maximum.koreaArtSchool.entity.CommCd;
import com.maximum.koreaArtSchool.service.CommCdServiceImpl;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequiredArgsConstructor
@RequestMapping("/admin")
public class CommCdController {

    private final CommCdServiceImpl commCdServiceImpl;

    @GetMapping("/common-code")
    public String commonCode(Model model) {
        List<CommCd> codeList = commCdServiceImpl.getAllCommCds();
        List<CommCd> systemList = commCdServiceImpl.getCommCdsByCdSe("CD0002");
        List<String> allCdNmList = commCdServiceImpl.getAllCdNmList();
        model.addAttribute("codeList", codeList);
        model.addAttribute("systemList", systemList);
        model.addAttribute("allCdNmList", allCdNmList);
        return "commonCode";
    }

    @PostMapping("/common-code/search")
    public String searchCdByName(@RequestParam("cdNm") String cdNm, Model model) {
        List<CommCd> searchResult = commCdServiceImpl.searchByCdNm(cdNm);
        model.addAttribute("searchResult", searchResult);
        return "commonCode :: cdTable";
    }

    @PostMapping("/common-code/add")
    public String addCode(@RequestParam("cd") String cd,
                          @RequestParam("cdSe") String cdSe,
                          @RequestParam("cdNm") String cdNm,
                          @RequestParam(value = "cdDesc", required = false) String cdDesc,
                          @RequestParam("isYn") String isYn) {
        commCdServiceImpl.addCode(cd, cdSe, cdNm, cdDesc, isYn);
        return "redirect:/admin/common-code";
    }

    @GetMapping("/common-code/delete/{cdId}")
    public String deleteCode(@PathVariable Integer cdId) {
        commCdServiceImpl.deleteCode(cdId);
        return "redirect:/admin/common-code";
    }
}