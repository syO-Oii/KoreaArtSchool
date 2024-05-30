package com.maximum.koreaartschool.dto;

import lombok.*;

import java.sql.Timestamp;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
@Builder
public class RCRT {
	private int rcrt_no;
	private String dept_cd;
	private String year_cd;
	private String rcrt_cd;
	private String mtcltn_yd_cd;
	private String edu_bgng_ymd;
	private String edu_end_ymd;
}