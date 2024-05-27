package com.maximum.koreaArtSchool.controller;

import com.maximum.koreaArtSchool.dto.SearchParamCommonCode;
import com.maximum.koreaArtSchool.dto.UpdateCommonCode;
import com.maximum.koreaArtSchool.entity.CommonCode;
import com.maximum.koreaArtSchool.service.CommonCodeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import java.util.List;

@Controller
@RequestMapping("/admin/common-code")
public class CommonCodeController {

    @Autowired
    private CommonCodeService commonCodeService;

    @GetMapping
    public String showCommonCodeList(@RequestParam(defaultValue = "0") int page,
                                     @RequestParam(defaultValue = "8") int size,
                                     Model model) {
        Page<CommonCode> commonCodesPage = commonCodeService.findAll(PageRequest.of(page, size));
        List<String> detailCodes = commonCodeService.findAllDetailCode();
        model.addAttribute("commCdPage", commonCodesPage);
        model.addAttribute("currentPage", page);
        model.addAttribute("totalPages", commonCodesPage.getTotalPages());
        model.addAttribute("cdSeList", detailCodes);
        model.addAttribute("searchParams", new SearchParamCommonCode());
        return "common-code";
    }

    @GetMapping("/search")
    public String search(Model model) {
        List<String> detailCodes = commonCodeService.findAllDetailCode();
        model.addAttribute("cdSeList", detailCodes);
        model.addAttribute("searchParams", new SearchParamCommonCode());
        return "common_code_search";
    }

    @PostMapping("/search")
    public String search(@ModelAttribute SearchParamCommonCode searchParam,
                         @RequestParam(defaultValue = "0") int page,
                         @RequestParam(defaultValue = "8") int size,
                         Model model) {
        Page<CommonCode> commCdPage = commonCodeService.getCommonCodes(searchParam, page, size);
        List<String> detailCodes = commonCodeService.findAllDetailCode();

        model.addAttribute("commCdPage", commCdPage);
        model.addAttribute("currentPage", page);
        model.addAttribute("totalPages", commCdPage.getTotalPages());
        model.addAttribute("searchParams", searchParam);
        model.addAttribute("cdSeList", detailCodes);

        return "common-code";
    }

    @PostMapping("/add")
    public String addCommonCode(@ModelAttribute CommonCode commonCode) {
        commonCodeService.saveCommonCode(commonCode);
        return "redirect:/admin/common-code";
    }

    @PostMapping("/update")
    public String updateCommonCode(@RequestParam("commonCodeNo") Integer commonCodeNo, UpdateCommonCode update, RedirectAttributes redirectAttributes) {
        commonCodeService.updateCommonCode(commonCodeNo, update);
        redirectAttributes.addFlashAttribute("message", "Common code updated successfully!");
        return "redirect:/admin/common-code";
    }

    @PostMapping("/delete")
    public String deleteCommonCode(@RequestParam("commonCodeNo") Integer commonCodeNo, RedirectAttributes redirectAttributes) {
        commonCodeService.deleteCommonCode(commonCodeNo);
        redirectAttributes.addFlashAttribute("message", "Common code deleted successfully!");
        return "redirect:/admin/common-code";
    }
}
