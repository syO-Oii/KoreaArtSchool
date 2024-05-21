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
	private Integer rcrt_no;
	private String dept_cd;
	private String year_code;
	private String rcrt_cd;
	private String mtcltn_yd_cd;
	private String edu_bgng_ymd;
	private String edu_end_ymd;
	private Integer evl_stg_no;
	private String evl_stg_cd;
	private String evl_stg_nm;
	private String prgr;
	private Timestamp evl_bgng_dt;
	private Timestamp evl_end_dt;
	private String stg_schdl_name;
	private String bgng_ymd;
	private String end_ymd;
	private String prsntn_ymd;

}