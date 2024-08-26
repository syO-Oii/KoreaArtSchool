package com.maximum.koreaartschool.dao;

import com.maximum.koreaartschool.dto.PostDto;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface PostMapper {

    public List<PostDto> adminListDao();

    List<PostDto> listDao(@Param("offset") int offset, @Param("pageSize") int pageSize);

    int countPosts();

    public PostDto viewDao(Integer postNumber);

    public int postInsertDao(String writer,
                             String postTitle,
                             String postContent,
                             String fileName,
                             String filePath,
                             Integer bbsId,
                             String delYn,
                             String adminEml);

    public PostDto getPostByNo(@Param("postNumber") Integer postNumber);

    public int postUpdateDao(Integer postNumber,String postTitle, String postContent);


    public int postDeleteDao(Integer postNumber);



}