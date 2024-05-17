package com.maximum.koreaartschool.dto;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.*;

import java.util.Date;

@Builder
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class EvaluateScore {
    private Integer evl_Stg_No;     // 평가단계 번호
    private Integer rcrt_No;       // 모집 번호
    private Integer evl_No;        // 평가위원 번호
    private Integer apl_No;        // 지원자 번호
    private String apl_Nm;         // 지원자 이름
    private Integer score1;       // 1번 문항 점수
    private Integer score2;       // 2번 문항 점수
    private Integer dept_Cd;       // 부서 코드
}