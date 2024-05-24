package com.maximum.koreaartschool.dto;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

@Data
@AllArgsConstructor
public class UploadResultDto implements Serializable {  //파일업로드 결과 처리용
    //Serializable 인터페이스: 직렬화 가능 (객체를 파일로 저장하거나 네트워크를 통해 전송할 때 필요)

    private String fileName;
    private String uuid;
    private String folderPath;
    private String getImageURL(){
        try{
            return URLEncoder.encode(folderPath+"/"+uuid+fileName, "UTF-8");
        }catch (UnsupportedEncodingException e){
            e.printStackTrace();
        } return "";
    }

    public String getThumbnailURL(){
        try{
            return URLEncoder.encode(folderPath+"/s_"+uuid+"_"+fileName, "UTF-8");
        }catch (UnsupportedEncodingException e){
            e.printStackTrace();
        }
        return "";
    }
}
