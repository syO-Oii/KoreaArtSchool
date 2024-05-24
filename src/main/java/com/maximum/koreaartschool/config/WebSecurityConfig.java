package com.maximum.koreaartschool.config;


import com.maximum.koreaartschool.filter.AdminAccessFilter;
import com.maximum.koreaartschool.service.UserDetailService;
import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.ProviderManager;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityCustomizer;
import org.springframework.security.config.annotation.web.configurers.AbstractHttpConfigurer;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;


//=>인증 처리하는 시큐리티 설정 파일.
@Configuration
@EnableWebSecurity
@RequiredArgsConstructor
public class WebSecurityConfig {
    private final UserDetailService adminService;
    private final AdminAccessFilter adminAccessFilter;

    // 정적 리소스에 대한 보안 설정을 무시하는 커스터마이저 빈을 구성
    @Bean
    public WebSecurityCustomizer configure() {
        return (web -> web.ignoring()
                // /static/** 경로의 정적 리소스에 대한 요청을 무시
                .requestMatchers(new AntPathRequestMatcher("/assets/**")));
    }

    // 보안 필터 체인을 설정하는 빈
    @Bean
    public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
        return http
                // 요청에 대한 보안 설정
                .authorizeRequests(auth -> auth
                        // 로그인, 회원가입, 사용자 페이지에 대한 요청은 모두 허용
                        .requestMatchers(
                                new AntPathRequestMatcher("/login"),
                                new AntPathRequestMatcher("/signup"),
                                new AntPathRequestMatcher("/user/**")
                        ).permitAll()
                        // 나머지 모든 요청은 인증을 요구
                        .anyRequest().authenticated())
                .formLogin(formLogin -> formLogin
                        // 로그인 페이지를 설정, 로그인 성공 후 기본 URL을 지정
                        .loginPage("/login")
                        // 로그인 폼에서 사용할 사용자 이름과 비밀번호 필드의 이름을 지정
                        .usernameParameter("email")
                        .passwordParameter("pswd")
                        // 로그인 성공 후 이동할 기본 URL을 지정
                        .defaultSuccessUrl("/", true)
                )
                .logout(logout -> logout
                        // 로그아웃 후 이동할 URL을 지정
                        .logoutSuccessUrl("/login")
                        // 로그아웃 시 HttpSession을 무효화
                        .invalidateHttpSession(true)
                )
                // CSRF 보호 기능을 비활성화
                .csrf(AbstractHttpConfigurer::disable)
                // AdminAccessFilter를 UsernamePasswordAuthenticationFilter 앞에 추가
                .addFilterBefore(adminAccessFilter, UsernamePasswordAuthenticationFilter.class)
                .build();
    }

    // 인증 관리자 빈을 설정
    @Bean
    public AuthenticationManager authenticationManager(HttpSecurity http, BCryptPasswordEncoder bCryptPasswordEncoder, UserDetailService userDetailService) throws Exception {
        // DaoAuthenticationProvider를 생성하고 설정
        DaoAuthenticationProvider authProvider = new DaoAuthenticationProvider();
        // UserDetailService와 PasswordEncoder를 설정
        authProvider.setUserDetailsService(adminService);
        authProvider.setPasswordEncoder(bCryptPasswordEncoder);
        // ProviderManager를 반환하여 AuthenticationManager로 설정
        return new ProviderManager(authProvider);
    }

    // BCryptPasswordEncoder 빈을 설정
    @Bean
    public BCryptPasswordEncoder bCryptPasswordEncoder() {
        // BCryptPasswordEncoder를 반환하여 비밀번호 암호화에 사용
        return new BCryptPasswordEncoder();
    }
}