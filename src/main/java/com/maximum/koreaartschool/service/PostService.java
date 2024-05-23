package com.maximum.koreaartschool.service;

import com.maximum.koreaartschool.dao.PostMapper;
import com.maximum.koreaartschool.dto.PostDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PostService {

    @Autowired
    private PostMapper postDao;

    public PostDto getPostByNo(Integer postNumber) {
        return postDao.getPostByNo(postNumber);
    }
}