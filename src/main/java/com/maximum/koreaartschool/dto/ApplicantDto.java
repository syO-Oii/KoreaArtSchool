package com.maximum.koreaartschool.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import java.util.Date;

@AllArgsConstructor
@NoArgsConstructor
@Data
@ToString
public class ApplicantDto {

    private Integer aplNumber;      //지원자번호(PK)
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
    private String aplImg;        //증명사진url

}

//dto에 필요없는 나머지 필드들
//private Integer rcrtNo;       //모집전형번호
//private Integer aplNo;        //지원자번호
//private String firstPassYn;   //1단계합격여부
//private String secondPassYn;  //2단계합격여부
//private String finalPassYn;   //최종합격여부
//private Date aplCrtDt;        //지원자생성일시
