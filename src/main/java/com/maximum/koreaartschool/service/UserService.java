package com.maximum.koreaartschool.service;


import com.maximum.koreaartschool.dto.AddUserRequest;
import com.maximum.koreaartschool.entity.UserAcct;
import com.maximum.koreaartschool.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
//UserService 클래스는 Spring 애플리케이션에서 사용자 계정과 관련된 서비스를 제공하는 역할을 합니다. 이 클래스는 사용자 정보를 저장하고,
// 특정 조건에 따라 사용자의 이메일을 찾는 등의 기능을 제공합니다. 각 메서드는 다음과 같은 기능을 합니다:
                                                //----->>이메일 찾는 기능을 수행한다


@RequiredArgsConstructor
@Service
public class UserService {

    private final UserRepository userRepository;
    private final BCryptPasswordEncoder bCryptPasswordEncoder;


    public Integer save(AddUserRequest dto) {  //메서드는 AddUserRequest DTO를 받아 사용자 정보를 데이터베이스에 저장한 후,
        // 저장된 사용자의 고유 ID를 반환       이해가 안됨
        return userRepository.save(UserAcct.builder()
                .email(dto.getEmail())
                // Password 암호화
                .pswd(bCryptPasswordEncoder.encode(dto.getPswd()))
                .birthdate(dto.getBirthdate())
                .phoneNumber(dto.getPhoneNumber())
                .build()).getUserNo();
    }

    public String findId(LocalDate birthdate, String phoneNumber) {
        UserAcct user = userRepository.findByBirthdateAndPhoneNumber(birthdate, phoneNumber);
        if (user != null) {
            return user.getEmail();
        } else {
            return null; // 일치하는 사용자가 없을 경우
        }
    }

    // 비밀번호 암호화 메서드 (사용하지 않더라도 참고로 작성)
    private String encodePassword(String password) {
        return bCryptPasswordEncoder.encode(password);
    }
}