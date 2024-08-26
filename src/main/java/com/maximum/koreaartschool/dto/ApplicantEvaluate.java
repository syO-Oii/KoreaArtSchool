package com.maximum.koreaartschool.dto;

import lombok.*;

import java.sql.Timestamp;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
@Builder
public class ApplicantEvaluate {
	// 평가위원별 대상자 평가
	private int EVL_STG_NO;		// 평가단계번호
	private int EVL_STG_CD;		// 평가단계코드
	private int RCRT_NO;		// 모집전형번호
	private String RCRT_CD;		// 모집전형코드
	private String DEPT_CD;		// 학과코드
	private int EVL_NO;			// 평가위원번호
	private int APL_NO;			// 지원자번호
	private String APL_NM;		// 지원자이름
	private String GNDR_CD;		// 지원자성별
	private int SCORE;			// 평가점수
	private int EVL_RANK;		// 평가순위
	private String IS_EVALUATED;	// 평가여부

}