package com.maximum.koreaartschool.service;


import com.maximum.koreaartschool.entity.UserAcct;
import com.maximum.koreaartschool.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Service;
//          ---------------->주어진 코드는 Spring Security의 UserDetailsService 인터페이스를 구현한 클래스입니다.
//        이 클래스의 주요 목적은 Spring Security에서 사용자의 정보를 가져오는 역할을 수행하는 것입니다.
// SpringSecurity에서 사용자 정보를 가져오는 인터페이스
//로그인할 때마다 사용자 정보를 가져온다.
@RequiredArgsConstructor
@Service
public class UserDetailService implements UserDetailsService {
    private final UserRepository userRepository;

    // AdminId로 사용자 정보를 가져오는 메서드
    @Override
    public UserAcct loadUserByUsername(String email) {
        System.out.println("Trying to load user by email: " + email); // 로그 추가
        return userRepository.findByEmail(email)
                .orElseThrow(() -> new IllegalArgumentException("User not found with ID: " + email));
    }
}