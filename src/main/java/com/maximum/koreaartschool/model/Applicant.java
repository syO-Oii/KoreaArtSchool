package com.maximum.koreaartschool.model;

import lombok.*;
import java.sql.Timestamp;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
@Builder
public class Applicant {

	private int aplNo;
	private int rcrtNo;
	private String dept;
	private String deptCd;
	private String pscpSe;
	private String aplPw;
	private String firstPassYn;
	private String secondPassYn;
	private String finalPassYn;
	private String pswd;
	private String aplNm;
	private String aplBrdt;
	private String gndrCd;
	private String addr;
	private String addrDetail;
	private String aplEml;
	private String aplTel;
	private String lastAcbg;
	private String aplImg;
	private Timestamp aplCrtDt;
	
}
