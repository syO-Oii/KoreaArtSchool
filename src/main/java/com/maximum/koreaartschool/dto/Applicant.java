package com.maximum.koreaartschool.dto;

import lombok.*;

import java.math.BigDecimal;
import java.sql.Timestamp;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
@Builder
public class Applicant {
	private int apl_no;
	private String apl_nm;
	private String gndr_cd;
	private String apl_eml;
	private String apl_pw;
	private String pswd;
	private String apl_tel;
	private String addr;
	private String addr_detail;
	private char apl_brdt;
	private String apl_img;
	private char first_pass_yn;
	private char second_pass_yn;
	private char final_pass_yn;
	private Timestamp apl_crt_dt;
	private String dept;
	private String dept_cd;
	private int rcrt_no;
	private String pscp_se;
	private String last_acbg;

}