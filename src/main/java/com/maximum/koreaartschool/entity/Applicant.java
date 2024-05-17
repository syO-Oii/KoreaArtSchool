package com.maximum.koreaartschool.entity;

import jakarta.persistence.Entity;
import lombok.*;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

import java.util.Date;

@Builder
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Entity
public class Applicant {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer apl_no;          // 지원자 고유번호
    private Integer rcrt_no;         // 모집전형 번호
    private String dept;            // 계열코드
    private String dept_cd;          // 학과코드
    private String pscp_se;          // 전형코드
    private String apl_pw;           // 기수코드
    private String first_pass_yn;     // 1단계 합격여부
    private String second_pass_yn;    // 2단계 합격여부
    private String final_pass_yn;     // 최종 합격여부
    private String pswd;            // 비밀번호
    private String apl_nm;           // 지원자명
    private String apl_Brdt;         // 지원자 생년워일
    private String gndr_Cd;          // 성별코드
    private String addr;            // 주소
    private String addr_Detail;      // 상세주소
    private String apl_Eml;          // 이메일
    private String apl_Tel;          // 연락처
    private String last_Acbg;        // 최종학력
    private String apl_Img;          // 증명사진
    private Date apl_Crt_Dt;          // 지원자 정보생성일시
}