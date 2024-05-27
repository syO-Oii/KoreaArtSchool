package com.maximum.koreaArtSchool.controller;

import com.maximum.koreaArtSchool.dto.CommonCodeDto;
import com.maximum.koreaArtSchool.entity.CommCd;
import com.maximum.koreaArtSchool.service.CommonCodeService;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequiredArgsConstructor
@RequestMapping("/admin")
public class CommCdController {

    private CommonCodeService commonCodeService;

    @GetMapping("/{cdId}")
    public CommonCodeDto getCommonCode(@PathVariable Integer cdId) {
        return commonCodeService.getCommonCodeById(cdId);
    }

    @GetMapping("/common-code")
    public String commonCode(Model model,
                             @RequestParam(defaultValue = "0") int page,
                             @RequestParam(defaultValue = "5") int size) {
        Page<CommCd> commCdPage = commonCodeService.getAllCommCd(page, size);
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
        commonCodeService.addCode(cd, cdSe, cdNm, cdDesc, isYn);
        return "redirect:/admin/common-code";
    }

    @PostMapping("/common-code/update")
    public String updateCommCd(@RequestParam("cdId") Integer cdId,
                               @RequestParam("cd") String cd,
                               @RequestParam("cdSe") String cdSe,
                               @RequestParam("cdNm") String cdNm,
                               @RequestParam("cdDesc") String cdDesc,
                               @RequestParam("isYn") String isYn) {
        commonCodeService.updateCommCd(cdId, cd, cdSe, cdNm, cdDesc, isYn);
        return "redirect:/admin/common-code";
    }

    @PostMapping("/common-code/delete")
    public String deleteCommCd(@RequestParam("cdId") Integer cdId) {
        commonCodeService.deleteCommCd(cdId);
        return "redirect:/admin/common-code";
    }

}
