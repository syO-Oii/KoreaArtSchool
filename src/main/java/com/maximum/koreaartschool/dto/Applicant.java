package com.maximum.koreaartschool.dto;

import lombok.*;

import java.math.BigDecimal;
import java.sql.Timestamp;

@AllArgsConstructor
@NoArgsConstructor
@RequiredArgsConstructor
@Getter
@Setter
@ToString
@Builder
public class Applicant {
	private int apl_no;
	@NonNull private String apl_nm;
	@NonNull private String gndr_cd;
	@NonNull private String apl_eml;
	@NonNull private String apl_pw;
	@NonNull private String pswd;
	@NonNull private String apl_tel;
	@NonNull private String addr;
	@NonNull private String addr_detail;
	@NonNull private char apl_brdt;
	@NonNull private String apl_img;
	@NonNull private char first_pass_yn;
	@NonNull private char second_pass_yn;
	@NonNull private char final_pass_yn;
	@NonNull private Timestamp apl_crt_dt;
	@NonNull private String dept;
	@NonNull private String dept_cd;
	@NonNull private int rcrt_no;
	@NonNull private String pscp_se;
	@NonNull private String last_acbg;

}