package com.maximum.koreaArtSchool.util;

import com.maximum.koreaArtSchool.entity.CommCd;
import com.maximum.koreaArtSchool.service.CommCdService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class BinderBean {

    @Autowired
    private CommCdService commCdService;

    // cdSe와 cd를 사용하여 코드 이름을 가져오는 메서드
    public String getCdNm(String cdSe, String cd) {
        return commCdService.getCdNmByCdSeAndCd(cdSe, cd);
    }

    // cdSe를 사용하여 코드 목록을 가져오는 메서드
    public List<CommCd> getCodeList(String cdSe) {
        return commCdService.getCommCdsByCdSe(cdSe);
    }
}