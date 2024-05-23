package com.maximum.koreaartschool.dto;

import lombok.*;

@Setter
@AllArgsConstructor
@NoArgsConstructor
@Data   //롬복 사용
@ToString
public class ApplyFileDto {   //APLY_FILE 테이블

    private Integer aplNo;      //지원자번호
    private Integer dcmNo;      //서류번호
    private String dcmFile;       //서류파일명

}
