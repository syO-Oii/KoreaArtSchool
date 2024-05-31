package com.maximum.koreaartschool.dto;

import lombok.*;
import org.springframework.web.multipart.MultipartFile;

@AllArgsConstructor
@NoArgsConstructor
@Data
@ToString
@Getter
@Setter
public class ApplicantDto {
    private Integer rcrtNo;        //지원자번호
    private Integer aplNo;      //지원자번호(PK)
    private String aplName;         //지원자명
    private String dept;          //계열코드
    private String deptCode;        //학과코드
    private String rcrtCode;        //전형코드(특기생/일반)
    private String yearCode;         //모집단위코드
    private String pswd;          //비밀번호
    private String aplBirthDay;       //생년월일
    private String gndrCode;        //성별코드
    private String address;          //주소
    private String addressDetail;    //상세주소
    private String aplEmail;        //이메일
    private String aplTelNumber;   //지원자연락처
    private String lastAcbg;      //최종학력
    private MultipartFile aplImg;
}

