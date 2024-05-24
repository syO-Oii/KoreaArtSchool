package com.maximum.koreaartschool.controller;


import com.maximum.koreaartschool.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.time.LocalDate;

@RequiredArgsConstructor
@Controller
public class FindController {

    private final UserService userService;

    @GetMapping("/user/find-id")
    public String showFindId() {
        return "find-id";
    }

    @PostMapping("/user/find-id")
    public String findId(@RequestParam("birthdate") LocalDate birthdate,
                         @RequestParam("phoneNumber") String phoneNumber,
                         Model model) {
        String foundId = userService.findId(birthdate, phoneNumber);
        if (foundId != null) {
            model.addAttribute("foundId", foundId);
        } else {
            model.addAttribute("errorMessage", "일치하는 사용자가 없습니다.");
        }
        return "find-id-result";
    }
}