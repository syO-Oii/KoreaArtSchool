package com.maximum.koreaartschool.model;

import lombok.*;

import java.security.Timestamp;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
@Builder
public class StageApplicant {
//한곳에 합침
    private int aplNo;
    private int rcrtNo;
    private int evlStgNo;
    private String dept;
    private String deptCd;
    private String rcrtCd;
    private String yearCd;
    private String firstPassYn;
    private String secondPassYn;
    private String finalPassYn;
    private String pswd;
    private String aplNm;
    private String aplBrdt;
    private String gndrCd;
    private String gndrNm;
    private String addr;
    private String addrDetail;
    private String aplEml;
    private String aplTel;
    private String lastAcbg;
    private String aplImg;
    private Timestamp aplCrtDt;
    private String sbmsnDcmntUrlAddr;
    private Integer score;
    private Integer evlRank;
    private String passYn;
    private String evlStgCd;
    private Integer rcrtUnitNo;
    private Integer rcrtPscp;
    private Integer selectPscp;
    private Integer evlNo;
    private Integer evlqNo;

}

	

