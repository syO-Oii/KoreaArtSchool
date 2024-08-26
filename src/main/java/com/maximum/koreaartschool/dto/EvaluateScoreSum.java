package com.maximum.koreaartschool.dto;

import lombok.*;

@Builder
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class EvaluateScoreSum {
    private Integer EVL_STG_NO;     // 평가단계 번호
    private Integer EVL_STG_CD;        // 평가단계코드
    private Integer RCRT_NO;        // 모집 번호
    private Integer EVL_NO;         // 평가위원 번호
    private Integer APL_NO;         // 지원자 번호
    private String APL_NM;          // 지원자 이름
    private Integer SCORE;          // 문항 점수
}