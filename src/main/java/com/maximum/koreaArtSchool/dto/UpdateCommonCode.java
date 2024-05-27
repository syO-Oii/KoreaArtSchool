package com.maximum.koreaArtSchool.dto;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class UpdateCommonCode {
    
    private int commonCodeNo;
    private String cdSe;
    private String cd;
    private String cdNm;
    private String cdDesc;
    private String isActiveYn;

}
