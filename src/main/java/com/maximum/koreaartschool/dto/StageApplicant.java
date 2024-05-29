package com.maximum.koreaartschool.dto;

import lombok.*;

import java.sql.Timestamp;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
@Builder
public class StageApplicant {
	private int evl_stg_no;
	private int rcrt_no;
	private int apl_no;
	private String apl_nm;
	private char apl_brdt;
	private String gndr_cd;
	private String apl_img;
	private String last_acbg;
	private String sbmsn_dcmnt_url_addr;
	private int score;
	private int evl_rank;
	private char pass_yn;
	private int evl_stg_cd;
	private int dept_cd;
	private int rcrt_cd;

}