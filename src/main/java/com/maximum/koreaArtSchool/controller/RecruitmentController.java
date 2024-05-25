package com.maximum.koreaArtSchool.controller;

import com.maximum.koreaArtSchool.dto.SearchParam;
import com.maximum.koreaArtSchool.entity.Rcrt;
import com.maximum.koreaArtSchool.entity.RcrtSchdl;
import com.maximum.koreaArtSchool.service.RcrtService;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Controller
@RequestMapping("/admin/recruitments")
@RequiredArgsConstructor
public class RecruitmentController {
    private final RcrtService rcrtService;

    @GetMapping
    public String getAllRecruitments(@RequestParam(defaultValue = "0") int page,
                                     @RequestParam(defaultValue = "8") int size,
                                     Model model) {
        Page<Rcrt> recruitmentsPage = rcrtService.getAllRecruitments(page, size);
        List<Rcrt> recruitments = recruitmentsPage.getContent().stream()
                .map(rcrtService::mapRecruitmentCodesToNames)
                .collect(Collectors.toList());

        recruitments.forEach(recruitment -> {
            List<RcrtSchdl> filteredSchedules = recruitment.getRcrtSchdls().stream()
                    .filter(schedule -> "모집기간".equals(schedule.getRcrtSchdlNm()))
                    .collect(Collectors.toList());
            recruitment.setRcrtSchdls(filteredSchedules);
        });

        model.addAttribute("recruitments", recruitments);
        model.addAttribute("yearCdList", rcrtService.getCommCdsByCdSe("AD0001"));
        model.addAttribute("deptCdList", rcrtService.getCommCdsByCdSe("AC0002"));
        model.addAttribute("rcrtCdList", rcrtService.getCommCdsByCdSe("AD0003"));
        model.addAttribute("mtcltnYdCdList", rcrtService.getCommCdsByCdSe("AD0002"));
        model.addAttribute("currentPage", page);
        model.addAttribute("totalPages", recruitmentsPage.getTotalPages());
        model.addAttribute("searchParams", new SearchParam());
        return "recruitments";
    }

    @PostMapping("/search")
    public String searchRecruitments(@ModelAttribute SearchParam searchParam,
                                     @RequestParam(defaultValue = "0") int page,
                                     @RequestParam(defaultValue = "8") int size,
                                     Model model) {
        Page<Rcrt> recruitmentsPage = rcrtService.searchRecruitments(searchParam.getDeptCd(), searchParam.getYearCode(), page, size);
        List<Rcrt> recruitments = recruitmentsPage.getContent().stream()
                .map(rcrtService::mapRecruitmentCodesToNames)
                .collect(Collectors.toList());

        recruitments.forEach(recruitment -> {
            List<RcrtSchdl> filteredSchedules = recruitment.getRcrtSchdls().stream()
                    .filter(schedule -> "모집기간".equals(schedule.getRcrtSchdlNm()))
                    .collect(Collectors.toList());
            recruitment.setRcrtSchdls(filteredSchedules);
        });

        model.addAttribute("recruitments", recruitments);
        model.addAttribute("yearCdList", rcrtService.getCommCdsByCdSe("AD0001"));
        model.addAttribute("deptCdList", rcrtService.getCommCdsByCdSe("AC0002"));
        model.addAttribute("rcrtCdList", rcrtService.getCommCdsByCdSe("AD0003"));
        model.addAttribute("mtcltnYdCdList", rcrtService.getCommCdsByCdSe("AD0002"));
        model.addAttribute("currentPage", page);
        model.addAttribute("totalPages", recruitmentsPage.getTotalPages());
        model.addAttribute("searchParams", searchParam);
        return "recruitments";
    }

    @GetMapping("/{id}")
    public String getRecruitmentById(@PathVariable Integer id, Model model) {
        Optional<Rcrt> recruitment = rcrtService.getRecruitmentById(id);
        if (recruitment.isPresent()) {
            Rcrt rcrt = rcrtService.mapRecruitmentCodesToNames(recruitment.get());

            List<RcrtSchdl> filteredSchedules = rcrt.getRcrtSchdls().stream()
                    .filter(schedule -> "모집기간".equals(schedule.getRcrtSchdlNm()))
                    .collect(Collectors.toList());
            rcrt.setRcrtSchdls(filteredSchedules);

            model.addAttribute("recruitment", rcrt);
            return "recruitment-details";
        } else {
            model.addAttribute("errorMessage", "Recruitment not found");
            return "error";
        }
    }
}
