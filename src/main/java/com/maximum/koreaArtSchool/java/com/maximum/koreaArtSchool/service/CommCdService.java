package com.maximum.koreaArtSchool.service;

import com.maximum.koreaArtSchool.dto.CommonCodeDto;
import com.maximum.koreaArtSchool.entity.CommCd;

import java.util.List;

public interface CommCdService {
    CommonCodeDto getCommonCodeById(Integer cdId);
    List<String> getAllCdNmList();
    void addCode(String cd, String cdSe, String cdNm, String cdDesc, String isYn);
    CommCd getCommCdById(Integer cdId);
    List<CommCd> getAllCommCds();
    List<CommCd> getCommCdsByCdSe(String cdSe);
    String getCdNmByCdSeAndCd(String cdSe, String cd);
    CommCd updateCommCd(Integer cdId, String cd, String cdSe, String cdNm, String cdDesc, String isYn);
    void deleteCommCd(Integer cdId);
}