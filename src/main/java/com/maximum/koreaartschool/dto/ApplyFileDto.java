package com.maximum.koreaartschool.dto;

import lombok.*;
import org.springframework.web.multipart.MultipartFile;

@Setter
@AllArgsConstructor
@NoArgsConstructor
@Data   //롬복 사용
@ToString
@Getter
public class ApplyFileDto {   //APLY_FILE 테이블

    private Integer dcmNo;          //서류번호
    private Integer aplNo;          //지원자번호
    private MultipartFile dcmNm;    //서류이름

}
