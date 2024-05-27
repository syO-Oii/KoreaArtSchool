package com.maximum.koreaArtSchool.controller;

import com.maximum.koreaArtSchool.dto.CommonCodeDto;
import com.maximum.koreaArtSchool.entity.CommCd;
import com.maximum.koreaArtSchool.service.CommCdService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequiredArgsConstructor
@RequestMapping("/admin")
public class CommCdController {

    @Autowired
    private CommCdService commCdService;

    @GetMapping("/{cdId}")
    public CommonCodeDto getCommonCode(@PathVariable Integer cdId) {
        return commCdService.getCommonCodeById(cdId);
    }

    @GetMapping("/common-code")
    public String commonCode(Model model,
                             @RequestParam(defaultValue = "0") int page,
                             @RequestParam(defaultValue = "5") int size) {
        Page<CommCd> commCdPage = commCdService.getAllCommCd(page, size);
        model.addAttribute("commCdPage", commCdPage);
        model.addAttribute("currentPage", page);
        model.addAttribute("totalPages", commCdPage.getTotalPages());
        return "common-code";
    }

    @PostMapping("/common-code/add")
    public String addCode(@RequestParam("cd") String cd,
                          @RequestParam("cdSe") String cdSe,
                          @RequestParam("cdNm") String cdNm,
                          @RequestParam(value = "cdDesc", required = false) String cdDesc,
                          @RequestParam("isYn") String isYn) {
        commCdService.addCode(cd, cdSe, cdNm, cdDesc, isYn);
        return "redirect:/admin/common-code";
    }

    @PostMapping("/common-code/update")
    public String updateCommCd(@RequestParam("cdId") Integer cdId,
                               @RequestParam("cd") String cd,
                               @RequestParam("cdSe") String cdSe,
                               @RequestParam("cdNm") String cdNm,
                               @RequestParam("cdDesc") String cdDesc,
                               @RequestParam("isYn") String isYn) {
        commCdService.updateCommCd(cdId, cd, cdSe, cdNm, cdDesc, isYn);
        return "redirect:/admin/common-code";
    }

    @PostMapping("/common-code/delete")
    public String deleteCommCd(@RequestParam("cdId") Integer cdId) {
        commCdService.deleteCommCd(cdId);
        return "redirect:/admin/common-code";
    }

}
