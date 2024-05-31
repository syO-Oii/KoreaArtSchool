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
public class Evaluator {
	private int evl_no;
	private String evl_nm;
	private String gndr_cd;
	private String evl_eml;
	private String pwd;
	private String evl_tel;
	private String evl_ogdp;
	private String addr;
	private String addr_detail;
	private String evl_brdt;
	private BigDecimal slry;
	private String evl_img;
	private String bank_nm;
	private String act_no;
	private char is_selected;
	private char is_deleted;
	private Timestamp evl_crt_dt;
	private String dept_cd;
	private String rcrt_cd;
	private String evl_stg_cd;
}