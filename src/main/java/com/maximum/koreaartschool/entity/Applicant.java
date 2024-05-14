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
    private Integer aplNo;      // 지원자 고유번호
    private Integer rcrtNo;     // 모집전형 번호
    private String dept;        // 계열코드
    private String deptCd;      // 학과코드
    private String pscpSe;      // 전형코드
    private String aplPw;       // 기수코드
    private char firstPassYn;   // 1단계 합격여부
    private char secondPassYn;  // 2단계 합격여부
    private char finalPassYn;   // 최종 합격여부
    private String pswd;        // 비밀번호
    private char aplNm;         // 지원자명
    private char aplBrdt;       // 지원자 생년워일
    private String gndrCd;      // 성별코드
    private String addr;        // 주소
    private String addrDetail;  // 상세주소
    private String aplEml;      // 이메일
    private String aplTel;      // 연락처
    private String lastAcbg;    // 최종학력
    private String aplImg;      // 증명사진
    private Date aplCrtDt;    // 지원자 정보생성일시
}