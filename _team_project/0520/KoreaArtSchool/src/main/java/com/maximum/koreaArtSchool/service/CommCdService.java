package com.maximum.koreaArtSchool.service;

import com.maximum.koreaArtSchool.entity.CommCd;

public interface CommCdService {
    void addCode(String cd, String cdSe, String cdNm, String cdDesc, String isYn);
    void updateCode(Integer cdId, String newCd, String newCdSe, String newCdNm, String newCdDesc, String newIsYn);
    void deleteCode(Integer cdId);
    CommCd getCommCdById(Integer cdId);
}