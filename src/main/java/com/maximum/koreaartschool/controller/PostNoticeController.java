package com.maximum.koreaartschool.controller;

import com.maximum.koreaartschool.dao.PostDao;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

@Controller
public class PostNoticeController {  //공지사항 게시판

    @Autowired
    private PostDao postDao;   //dao 객체 변수 생성

    //입학메인페이지
    @RequestMapping(value="/main")
    public String mainPage(){

        return "main"; //뷰페이지
    }

    @RequestMapping(value="/apply")
    public String applyPage(){

        return "apply_step_one"; //뷰페이지
    }


    //지원자페이지
    //select메서드(공지사항 리스트 보기)
    @RequestMapping("/list")
    public String listPage(Model model) {
        model.addAttribute("post_list", postDao.listDao());
        return "apply_post_list_notice"; //뷰페이지
    }

    //관리자 - 지원자페이지
    //select메서드(공지사항 리스트 보기)
    @RequestMapping("/admin/list")
    public String adminListPage(Model model) {
        model.addAttribute("post_list", postDao.listDao());
        return "admin_post_notice"; //뷰페이지
    }

    //select메서드(공지사항 개별 뷰 보기)
    @RequestMapping("/view")
    public String viewPage(HttpServletRequest request, Model model) {
        String PostId = request.getParameter("postNumber");
        model.addAttribute("dto", postDao.viewDao(PostId));
        return "apply_post_view_notice"; //뷰페이지
    }

    //공지사항 글 작성 폼(jsp파일) 호출
    @RequestMapping("/postForm")
    public String postForm() {
        return "postForm_notice"; //뷰페이지
    }

    //insert메서드(공지사항 글 작성)
    @RequestMapping("/post")
    public String postWrite(HttpServletRequest request, Model model) {
        postDao.postInsertDao(
                request.getParameter("writer"),
                request.getParameter("postTitle"),
                request.getParameter("postContent"),
                Integer.valueOf(request.getParameter("bbsId")),
                request.getParameter("delYn"),
                request.getParameter("adminEml")
        );

        return "redirect:list";  //url
    }


    //관리자페이지
    //delete메서드(공지사항 글 삭제)
    @RequestMapping("/delete") //파라미터 값을 받아 postDeleteDao메서드 호출 & DB에서 delete
    public String deletePost(HttpServletRequest request, Model model) {
        postDao.postDeleteDao(request.getParameter("postNumber"));
        return "redirect:list"; //url
    }

}