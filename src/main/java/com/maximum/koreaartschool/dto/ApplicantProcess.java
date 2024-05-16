package com.maximum.koreaartschool.dto;

import lombok.*;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
@Builder
public class ApplicantProcess {
	private int evl_stg_no;
	private int rcrt_no;
	private int apl_no;
	private String apl_nm;
	private String apl_brdt;
	private int gndr_cd;
	private String apl_img;
	private String last_acbg;
	private String sbmsn_dcmnt_url_addr;
	private int avg_score;
	private String pass_yn;
	private String evl_stg_cd;
	private String dept_cd;
	private String rcrt_cd;
	private int score;
	private int evl_rank;
	private String is_evaluated;

}