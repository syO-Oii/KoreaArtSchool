package com.maximum.koreaartschool.dao;

import com.maximum.koreaartschool.dto.PostDto;
import org.apache.ibatis.annotations.Mapper;

import java.time.LocalDateTime;
import java.util.List;

@Mapper  //인터페이스 구현을 'xml'로 하겠다는 의미
public interface PostDao {

    //select메서드(리스트 보기)
    public List<PostDto> listDao();

    //select메서드(개별 뷰 보기)
    public PostDto viewDao(String postNumber);

    //insert메서드(글 작성)
    public int postInsertDao(String writer,
                             String postTitle,
                             String postContent,
                             Integer bbsId,
                             String delYn,
                             String adminEml);


    //delete메서드(글 삭제)
    public int postDeleteDao(String postNumber);


    //update는 insert, delete와 작성 방법이 같음
}