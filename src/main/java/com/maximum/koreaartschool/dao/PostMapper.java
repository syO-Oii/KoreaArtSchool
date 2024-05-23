package com.maximum.koreaartschool.dao;

import com.maximum.koreaartschool.dto.PostDto;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface PostMapper {

    //select메서드(리스트 보기)
    public List<PostDto> listDao();

    //select메서드(개별 뷰 보기)
    public PostDto viewDao(Integer postNumber);

    //insert메서드(글 작성)
    public int postInsertDao(String writer,
                             String postTitle,
                             String postContent,
                             String fileName,
                             String filePath,
                             Integer bbsId,
                             String delYn,
                             String adminEml);


    //postId를 사용하여 게시물 정보를 가져오는 메서드
    public PostDto getPostByNo(@Param("postNumber") Integer postNumber);


    //update메서드(글 수정)
    public int postUpdateDao(Integer postNumber,String postTitle, String postContent);


    //delete메서드(글 삭제)
    public int postDeleteDao(String postNumber);



}