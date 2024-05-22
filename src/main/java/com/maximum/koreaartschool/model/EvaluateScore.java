package com.maximum.koreaartschool.model;

import lombok.*;


@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
@Builder
public class EvaluateScore {

	private int evlStgNo;
	private int rcrtNo;
	private int evlNo;
	private int aplNo;
	private int evlqNo;
	private Integer score;
	private int evlStgCd;
	
}
