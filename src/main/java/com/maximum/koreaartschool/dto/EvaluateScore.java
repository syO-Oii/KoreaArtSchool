package com.maximum.koreaartschool.dto;

import lombok.*;

@Builder
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class EvaluateScore {
    private Integer evl_Stg_No;     // 평가단계 번호
    private Integer rcrt_No;        // 모집 번호
    private Integer evl_No;         // 평가위원 번호
    private Integer apl_No;         // 지원자 번호
    private String apl_Nm;          // 지원자 이름
    private Integer EVLQ_NO;        // 문항 점수
    private Integer score;          // 문항 점수
    private Integer dept_Cd;        // 부서 코드
}