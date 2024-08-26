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
public class Evaluator {
	private int evl_no;
	@NonNull private String evl_nm;
	@NonNull private String gndr_cd;
	@NonNull private String evl_eml;
	@NonNull private String pwd;
	@NonNull private String evl_tel;
	@NonNull private String evl_ogdp;
	@NonNull private String addr;
	@NonNull private String addr_detail;
	@NonNull private String evl_brdt;
	@NonNull private BigDecimal slry;
	@NonNull private String evl_img;
	@NonNull private String bank_nm;
	@NonNull private String act_no;
	@NonNull private char is_selected;
	@NonNull private char is_deleted;
	@NonNull private Timestamp evl_crt_dt;
	@NonNull private String dept_cd;
	@NonNull private String rcrt_cd;
	@NonNull private String evl_stg_cd;
}