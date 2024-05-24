package com.maximum.koreaartschool.controller;

import com.maximum.koreaartschool.dto.UploadResultDto;
import lombok.extern.slf4j.Slf4j;
import net.coobird.thumbnailator.Thumbnailator;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.net.URLDecoder;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@RestController
@Slf4j
public class UploadController {

    @Value("${org.zerock.upload.path}")  //application.properties의 변수
    private String uploadPath;

    @GetMapping("/display")
    public ResponseEntity<byte[]> getFile(String fileName) {
        ResponseEntity<byte[]> result = null;

        try{
            String srcFileName = URLDecoder.decode(fileName, "UTF-8");
            log.info("fileName: " + srcFileName);

            File file = new File(uploadPath + File.separator +srcFileName);
            log.info("file: " + file);

            HttpHeaders header = new HttpHeaders();

            //MIME타입 처리
            header.add("Content-Type", Files.probeContentType(file.toPath()));
            //파일데이터 처리
            result = new ResponseEntity<>(FileCopyUtils.copyToByteArray(file), header, HttpStatus.OK);
        } catch (Exception e){
            log.error(e.getMessage());
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR); //HTTP 상태 코드 500(서버에서 요청을 처리 도중에 내부적인 문제 발생)
        }
        return result;
    }





    @PostMapping("/uploadAjax")
    public ResponseEntity<List<UploadResultDto>> uploadFile(MultipartFile[] uploadFiles) {   //uploadFiles라는 이름으로 파일데이터 추가

        List<UploadResultDto> resultDTOList = new ArrayList<>();

        for(MultipartFile uploadFile : uploadFiles) {

            //이미지 파일만 업로드 가능
            if(uploadFile.getContentType().startsWith("image")==false){
                log.warn("이미지 파일이 아닙니다.");
                return new ResponseEntity<>(HttpStatus.FORBIDDEN); //HTTP 상태 코드 403 (클라이언트가 요청한 리소스에 접근할 권한이 없음)
            }

            String originalFilename = uploadFile.getOriginalFilename();
            String fileName = originalFilename.substring(originalFilename.lastIndexOf("\\") + 1);

            //서버 콘솔에 파일명 출력
            log.info("fileName: " + fileName);

            //날짜 폴더 생성
            String folderPath = makeFolder();

            //UUID (유니크 식별자. 파일의 URL 생성. 파일이름 중복 방지)
            String uuid = UUID.randomUUID().toString();

            //저장할 파일 이름 중간에 "_"를 이용해서 구분
            String saveName = uploadPath + File.separator + folderPath + File.separator + uuid + "_" + fileName;
            Path savePath = Paths.get(saveName);

            try{
                //원본 파일 저장
                uploadFile.transferTo(savePath);

                //썸네일 생성 (파일 이름은 s로 시작)
                String thumbnailSaveName = uploadPath + File.separator + folderPath + File.separator + "s_" + uuid + "_" + fileName;

                File thumbnailFile = new File(thumbnailSaveName);
                Thumbnailator.createThumbnail(savePath.toFile(), thumbnailFile, 100, 100); //썸네일 사이즈: 가로세로 100px
                resultDTOList.add(new UploadResultDto(fileName, uuid, folderPath));

            } catch (IOException e) {
                e.printStackTrace();
            }
        } //end (for문)
        return new ResponseEntity<>(resultDTOList, HttpStatus.OK); //상태 코드를 200 (요청 성공)
    }

    //날짜 폴더 생성
    private String makeFolder() {
        String str = LocalDate.now().format(DateTimeFormatter.ofPattern("yyyy/MM/dd"));

        String folderPath = str.replace("/", File.separator);

        File uploadPathFolder = new File(uploadPath, folderPath);

        if(uploadPathFolder.exists() == false) {
            uploadPathFolder.mkdirs();
        }
        return folderPath;
    }

}
