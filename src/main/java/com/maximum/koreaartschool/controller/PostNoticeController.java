package com.maximum.koreaartschool.controller;

import com.maximum.koreaartschool.dao.PostDao;
import com.maximum.koreaartschool.dto.PostDto;
import com.maximum.koreaartschool.service.PostService;
import jakarta.servlet.http.HttpServletRequest;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

@Slf4j
@Controller
public class PostNoticeController {  //공지사항 게시판

    @Autowired
    private PostDao postDao;   //dao 객체 변수 생성
    @Autowired
    private PostService postService;

    //입학메인페이지
    @RequestMapping(value="/main")
    public String mainPage(){

        return "main"; //뷰페이지
    }

    @RequestMapping(value="/apply")
    public String applyPage(){

        return "apply_step_one"; //뷰페이지
    }


    //공지사항 글 작성 폼(jsp파일) 호출
    @RequestMapping("/postForm")
    public String postForm() {
        return "postForm_notice"; //뷰페이지
    }





    //지원자페이지
    //select메서드(공지사항 리스트 보기)
    @RequestMapping("/list")
    public String listPage(Model model) {
        model.addAttribute("post_list", postDao.listDao());
        return "apply_post_listview_notice"; //뷰페이지
    }

    //지원자페이지
    //select메서드(공지사항 개별 뷰 보기)
    @RequestMapping("/view")
    public String viewPage(HttpServletRequest request, Model model) {
        int PostId = Integer.parseInt(request.getParameter("postNumber"));

        model.addAttribute("dto", postDao.viewDao(PostId));
        return "apply_post_detailview_notice"; //뷰페이지
    }





    //관리자 - 지원자페이지
    //select메서드(공지사항 리스트 보기)
    @RequestMapping("/admin/list")
    public String adminListPage(HttpServletRequest request, Model model) {
        model.addAttribute("post_list", postDao.listDao());

        return "admin_post_notice"; //뷰페이지
    }


    //관리자 - 지원자페이지
    //select메서드(공지사항 개별 뷰 보기)
    @RequestMapping("/adminView")
    public String adminViewPage(HttpServletRequest request, Model model) {
        int PostId = Integer.parseInt(request.getParameter("postNumber"));

        model.addAttribute("dto", postDao.viewDao(PostId));
        return "admin_post_notice"; //개별 글 뷰페이지
    }


//    //관리자페이지
//    //insert메서드(공지사항 글 작성)
//    @RequestMapping("/post")
//    public String postWrite(HttpServletRequest request, Model model) {
//
//        Integer bbsId = 1; // 기본값 설정
//        try {
//            bbsId = Integer.valueOf(request.getParameter("bbsId"));
//        } catch (NumberFormatException e) {
//            // 오류 처리
//        }
//        postDao.postInsertDao(
//                request.getParameter("writer"),
//                request.getParameter("postTitle"),
//                request.getParameter("postContent"),
//                Integer.valueOf(request.getParameter("bbsId")),
//                request.getParameter("delYn"),
//                request.getParameter("adminEml")
//        );
//
//        return "redirect:admin/list";  //url
//    }

    //관리자페이지
    //update메서드(공지사항 글 수정)
    @PostMapping("/submit")
    public String handleNoticePage(@RequestParam("action") String action,
                                   @RequestParam(value = "postNumber", required = false) Integer postNumber,
                                   @RequestParam("postTitle") String postTitle,
                                   @RequestParam("postContent") String postContent,
                                   @RequestParam("writer") String writer,
                                   @RequestParam(value = "fileNm", required = false) MultipartFile fileNm,
                                   @RequestParam("filePath") String filePath,
                                   @RequestParam("delYn") String delYn,
                                   @RequestParam("adminEml") String adminEml)
    {
        Integer bbsId = 1; // 기본값 설정

        String fileName = null;
        // 파일 저장 로직 추가
        if (fileNm != null && !fileNm.isEmpty()) {
            fileName = fileNm.getOriginalFilename();
            Path path = Paths.get("uploads", fileName); // 파일 저장 경로 지정
            try {
                // 파일을 지정된 경로에 저장
                Files.write(path, fileNm.getBytes());
            } catch (IOException e) {
                e.printStackTrace(); // 파일 저장 중 에러가 발생한 경우 로그 출력
            }
        }

        if ("edit".equals(action)) {
            // 수정 작업 수행
            if (postNumber != null) {
                postDao.postUpdateDao(postNumber, postTitle, postContent);
            } else {
                // postNumber가 null인 경우에 대한 처리 추가
            }
        } else if ("post".equals(action)) {
            // 등록 작업 수행
            postDao.postInsertDao(writer, postTitle, postContent, fileName, filePath, bbsId, delYn, adminEml);
        }

        // 처리 후 페이지 리다이렉션 또는 다른 로직 수행
        return "redirect:admin/list";
    }

    @GetMapping("/getPost")
    @ResponseBody
    public PostDto getPost(@RequestParam("postNumber") Integer postNumber) {
        //postNumber로 단일 게시물 정보 가져오기
        PostDto postDTO = postService.getPostByNo(postNumber);
        return postDTO;
    }


    //관리자페이지
    //delete메서드(공지사항 글 삭제)
    @RequestMapping("/delete")
    public String deletePost(HttpServletRequest request, Model model) {
        postDao.postDeleteDao(request.getParameter("postNumber"));
        return "redirect:list"; //url
    }
}