package com.maximum.koreaartschool.controller;

import com.maximum.koreaartschool.dto.PostDto;
import com.maximum.koreaartschool.service.PostNoticeService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

@Slf4j
@Controller
public class PostNoticeController {  //공지사항 게시판

    @Autowired
    private PostNoticeService postService;

    @GetMapping("/postForm")
    public String postForm() {
        return postService.postForm();
    }

    @GetMapping("/list")
    public String listPage(@RequestParam(defaultValue = "1") int page, Model model) {
        return postService.listPage(page, model);
    }

    @GetMapping("/view")
    public String viewPage(@RequestParam("postNumber") String postNumber,
                           Model model) {
        return postService.viewPage(postNumber, model);
    }

    @GetMapping("/admin/list")
    public String adminListPage(Model model) {
        return postService.adminListPage(model);
    }

    @PostMapping("/submit")
    public String handleNoticePage(@RequestParam("action") String action,
                                   @RequestParam(value = "postNumber", required = false) Integer postNumber,
                                   @RequestParam("postTitle") String postTitle,
                                   @RequestParam("postContent") String postContent,
                                   @RequestParam("writer") String writer,
                                   @RequestParam(value = "fileName", required = false) MultipartFile fileName,
                                   @RequestParam("delYn") String delYn,
                                   @RequestParam("adminEml") String adminEml) {
     return postService.addNoticeArticle(action, postNumber, postTitle, postContent,
             writer, fileName, delYn, adminEml);
    }

    @GetMapping("/getPost")
    @ResponseBody
    public PostDto getPost(@RequestParam("postNumber") Integer postNumber) {
        return postService.getPost(postNumber);
    }

    @PostMapping("/delete")
    public String deletePost(@RequestParam("postNumbers") List<Integer> postNumbers) {
        return postService.deletePost(postNumbers);
    }
}