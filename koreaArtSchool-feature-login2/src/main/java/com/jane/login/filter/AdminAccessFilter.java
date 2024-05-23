package com.jane.login.filter;

import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Component;

import java.io.IOException;
//AdminAccessFilter 클래스는 특정 페이지 접근 시 사용자의 아이디를 검사하여 접근 권한을 결정하는 커스텀 필터입니다.
// 이 필터는 Spring Security와 함께 사용되어, 특정 URL 패턴에 대한 접근을 제한하는 역할을 합니다.
//SecurityContextHolder.getContext(): Spring Security의 SecurityContextHolder에서 현재 보안 컨텍스트를 가져옵니다. 이 컨텍스트에는 현재 사용자의 보안 관련 정보가 포함되어 있습니다.
//getAuthentication(): 현재 보안 컨텍스트에서 인증(Authentication) 객체를 가져옵니다. 인증 객체에는 현재 사용자의 인증 정보가 포함되어 있습니다.
//getPrincipal(): 인증 객체에서 주체(principal)를 가져옵니다. 주체는 현재 사용자를 나타내는 객체입니다. 이 메서드는 일반적으로 Object 타입으로 반환됩니다.
//따라서 principal 변수에는 현재 사용자의 인증 정보가 담긴 객체가 할당됩니다. 주로 이 객체는 UserDetails 인터페이스를 구현한 사용자 정보 객체일 것입니다. 이를 통해 현재 로그인한 사용자의 상세 정보를 확인할 수 있습니다.

@Component
public class AdminAccessFilter extends HttpFilter {

    @Override
    protected void doFilter(HttpServletRequest request, HttpServletResponse response, FilterChain chain) throws IOException, ServletException {
        String requestURI = request.getRequestURI(); //현재 HTTP 요청이 어떤 리소스를 요청했는지 확인하는 데 사용
        if (requestURI.startsWith("/admin")) {
            Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
            if (principal instanceof UserDetails) {
                UserDetails userDetails = (UserDetails) principal;
                String username = userDetails.getUsername();
                System.out.println("User: " + username); // Log the username

                if (!username.startsWith("admin")) {
                    response.sendRedirect("/access-denied");
                    return;
                }
            }
        }
        chain.doFilter(request, response);
    }
}
// 특정 페이지 접근 시 아이디를 검사하는 커스텀 필터