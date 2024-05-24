package com.maximum.koreaartschool.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserViewController {

    // 로그인 페이지를 보여주는 GET 요청 핸들러
    @GetMapping("/login")
    public String login() {
        return "login";
    }

    // 회원 가입 페이지를 보여주는 GET 요청 핸들러
    @GetMapping("/signup")
    public String signup() {
        return "signup";
    }

}