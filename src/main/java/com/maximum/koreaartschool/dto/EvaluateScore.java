package com.maximum.koreaartschool.entity;

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
@Entity
public class EvaluateScore {
    @Id
    private Integer EVL_STG_NO;     // 평가단계 번호
    private Integer RCRT_NO;        // 모집 번호
    private Integer EVL_NO;         // 평가위원 번호
    private Integer APL_NO;         // 지원자 번호
    private String  apl_nm;         // 지원자 이름
    private Integer EVLQ_NO;        // 문항 번호
    private Integer SCORE;          // 점수
    private Integer dept_cd;

}