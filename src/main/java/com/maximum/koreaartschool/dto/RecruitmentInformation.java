package com.maximum.koreaartschool.dto;

import lombok.*;

import java.sql.Timestamp;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
@Builder
public class RecruitmentInformation {
	private Integer rcrt_schdl_no;
	private Integer rcrt_no;
	private String dept_cd;
	private String year_cd;
	private String rcrt_cd;
	private String mtcltn_yd_cd;
	private char edu_bgng_ymd;
	private char edu_end_ymd;
	private Integer evl_stg_no;
	private String evl_stg_cd;
	private String evl_stg_nm;
	private String prgr;
	private char evl_bgng_dt;
	private char evl_end_dt;
	private String rcrt_schdl_nm;
	private String bgng_ymd;
	private String end_ymd;
	private char prsntn_ymd;

}