package com.maximum.koreaartschool.controller;


import com.maximum.koreaartschool.dto.AddUserRequest;
import com.maximum.koreaartschool.service.UserService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@RequiredArgsConstructor
@Controller
public class UserApiController {
    private  final UserService userService;

    // 사용자 회원가입을 처리하는 POST 요청 핸들러
    @PostMapping("/user")
    public String signup(AddUserRequest request) {
        userService.save(request);
        return "redirect:/login";
    }

    // 로그아웃 요청을 처리하는 GET 요청 핸들러
    @GetMapping("/logout")
    public String logout(HttpServletRequest request, HttpServletResponse response) {
        // 현재 사용자의 인증 정보를 가져와 로그아웃
        new SecurityContextLogoutHandler().logout(request, response,
                SecurityContextHolder.getContext().getAuthentication());
        // 로그아웃 후 로그인 페이지로 리다이렉트
        return "redirect:/login";
    }
}
// GET 요청은 페이지를 보여주고, POST 요청은 데이터를 처리하고 이동