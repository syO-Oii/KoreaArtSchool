package com.maximum.koreaartschool.dto;

import lombok.Data;

@Data
public class CommCd {
    private int cdId;
    private String cdSe;
    private String cd;
    private String cdNm;
    private String cdDesc;
    private String isYn;
    private String createdAt;
    private String deletedAt;
}