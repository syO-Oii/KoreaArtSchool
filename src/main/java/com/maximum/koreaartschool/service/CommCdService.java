package com.maximum.koreaartschool.service;

import com.maximum.koreaartschool.entity.CommCd;
import com.maximum.koreaartschool.repository.CommCdRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommCdService {

    @Autowired
    private CommCdRepository commCdRepository;

    // 모든 공통 코드 // 결과는 "commCds" 캐시에 저장
    @Cacheable("commCds")
    public List<CommCd> getAllCommCds() {
        return commCdRepository.findAll();
    }

    // cdSe 값에 따라 공통 코드 리스트 // 결과는 "commCdsByCdSe" 캐시에 저장, cdSe 값을 키로 사용
    @Cacheable(value = "commCdsByCdSe", key = "#cdSe")
    public List<CommCd> getCommCdsByCdSe(String cdSe) {
        return commCdRepository.findByCdSe(cdSe);
    }

    // cdSe와 cd 값에 따라 한국어 코드 이름(cdNm) // 결과는 "commCd" 캐시에 저장, cdSe와 cd 값을 키로 사용
    @Cacheable(value = "commCd", key = "#cdSe + '-' + #cd")
    public String getCdNmByCdSeAndCd(String cdSe, String cd) {
        return commCdRepository.findByCdSeAndCd(cdSe, cd).map(CommCd::getCdNm).orElse(null);
    }

    // 새로운 공통 코드를 저장 // commCd 저장할 공통 코드, @return 저장된 공통 코드
    public CommCd saveCommCd(CommCd commCd) {
        return commCdRepository.save(commCd);
    }
}
