package com.maximum.koreaartschool.dto;

import lombok.*;

@AllArgsConstructor
@NoArgsConstructor
@Data   //롬복 사용
@ToString
@Getter
@Setter
public class ApplyIntroDto {   //APLY_INTRO 테이블
    private int aplNo;          //지원자번호
    private int rcrtIntrNo;     //문항번호
    private int evlqNo;         //평가문항번호
    private int rcrtNo;         //모집전형번호
    private String qitemNm1;    // 질문항목1
    private String qitemNm2;    // 질문항목2
}
