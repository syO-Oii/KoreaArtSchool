package com.maximum.koreaartschool.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import java.time.LocalDateTime;

@AllArgsConstructor
@NoArgsConstructor
@Data   //롬복 사용
@ToString
public class PostDto {

    private Integer postNumber;           //id 게시글번호
    private String writer;              //writer 작성자
    private String postTitle;            //title 제목
    private String postContent;             //content 내용
    private LocalDateTime writeDate;      //WRT_DT 작성일자
    private String fileName;  //첨부파일(name = "FILE_NO")
    private String filePath;
    private String delYn;   //삭제여부(name = "DEL_YN")
}