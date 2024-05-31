package com.maximum.koreaartschool.service;

import com.maximum.koreaartschool.dao.PostMapper;
import com.maximum.koreaartschool.dto.PostDto;
import jakarta.servlet.http.HttpServletRequest;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

@Slf4j
@Service
public class PostNoticeService {

    @Autowired
    private PostMapper postMapper;

    //test
    public String postForm() {
        return "postForm_notice";
    }

    public String listPage(@RequestParam(defaultValue = "1") int page, Model model) {
            int pageSize = 10;
            int offset = (page - 1) * pageSize;

            List<PostDto> postListPage = postMapper.listDao(offset, pageSize);
            int totalPosts = postMapper.countPosts();
            int totalPages = (int) Math.ceil((double) totalPosts / pageSize);

            model.addAttribute("post_list", postListPage);
            model.addAttribute("current_page", page);
            model.addAttribute("total_pages", totalPages);
            model.addAttribute("page_numbers", IntStream.rangeClosed(1, totalPages).boxed().collect(Collectors.toList()));

            return "apply_post_listview_notice";
    }


    public String viewPage(@RequestParam("postNumber") String postNumber,
                           Model model) {
        int postId = Integer.parseInt(postNumber);

        PostDto dto = postMapper.viewDao(postId);

        if (dto.getFileName() == null || dto.getFileName().isEmpty()) {
            dto.setFileName("없음");
        }

        model.addAttribute("dto", dto);
        return "apply_post_detailview_notice";
    }

    public String adminListPage(Model model) {
        model.addAttribute("post_list", postMapper.adminListDao());
        return "admin_post_notice";
    }

    public String addNoticeArticle(@RequestParam("action") String action,
                                   @RequestParam(value = "postNumber", required = false) Integer postNumber,
                                   @RequestParam("postTitle") String postTitle,
                                   @RequestParam("postContent") String postContent,
                                   @RequestParam("writer") String writer,
                                   @RequestParam(value = "fileName", required = false) MultipartFile fileName,
                                   @RequestParam("delYn") String delYn,
                                   @RequestParam("adminEml") String adminEml) {
        log.info("postNumber = " + postNumber);
        log.info("postTitle = " + postTitle);
        log.info("postContent = " + postContent);
        log.info("fileName = " + fileName);
        Integer bbsId = 1;
        String filePath = null;
        String fileName1 = null;

        if (fileName != null && !fileName.isEmpty()) {
            fileName1 = fileName.getOriginalFilename();
            String rootPath = "C:\\upload";
            LocalDate currentDate = LocalDate.now();
            String subPath = currentDate.format(DateTimeFormatter.ofPattern("yyyy/MM/dd"));
            filePath = rootPath + File.separator + subPath + File.separator + fileName1;

            log.info("filePath = " + filePath);
            File dir = new File(rootPath + File.separator + subPath);
            if (!dir.exists()) {
                dir.mkdirs();
            }

            try {
                Files.write(Paths.get(filePath), fileName.getBytes());
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        if ("edit".equals(action)) { // 수정
            if (postNumber != null) {
                postMapper.postUpdateDao(postNumber, postTitle, postContent);
                log.info("수정 완료: postNumber: "+postNumber+", postTitle: "+postTitle+", postContent: "+postContent);
            }
        } else if ("post".equals(action)) { // 등록
            postMapper.postInsertDao(writer, postTitle, postContent, fileName1, filePath, bbsId, delYn, adminEml);
            log.info("등록 완료: postNumber: "+postNumber+", postTitle: "+postTitle+", postContent: "+postContent+", " +
                    "fileName: "+fileName1+", filePath: "+filePath+", adminEml: "+adminEml);
        }

        return "redirect:/admin/list";
    }

    public PostDto getPost(@RequestParam("postNumber") Integer postNumber) {
        return postMapper.getPostByNo(postNumber);
    }

    public String deletePost(@RequestParam("postNumbers") List<Integer> postNumbers) {
        for (Integer postNumber : postNumbers) {
            postMapper.postDeleteDao(postNumber);
            log.info("삭제된 게시글: " + postNumber);
        }
        return "redirect:/admin/list";
    }



}
