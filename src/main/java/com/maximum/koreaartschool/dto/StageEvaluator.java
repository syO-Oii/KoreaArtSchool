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
public class StageEvaluator {
	private int evl_no;
	private int evl_stg_no;
	private int rcrt_no;
	private String evl_stg_cd;
	private String evl_nm;
	private String evl_tel;
	private String evl_eml;
	private String evl_ogdp;
	private String is_selected;
	private String gndr_cd;
	private String rcrt_cd;
	private String dept_cd;
}