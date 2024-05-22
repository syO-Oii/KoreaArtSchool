package com.maximum.koreaartschool.service;

import com.maximum.koreaartschool.dao.CodeDao;
import com.maximum.koreaartschool.dto.CommCd;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommCdService {

    @Autowired
    private CodeDao codeDao;

//    @Cacheable("commCds")
//    public List<CommCd> getAllCommCds() {
//        return codeDao.findAll();
//    }
//
//    @Cacheable(value = "commCdsByCdSe", key = "#cdSe")
//    public List<CommCd> getCommCdsByCdSe(String cdSe) {
//        return codeDao.getCommCdsByCdSe(cdSe);
//    }
//
//    @Cacheable(value = "commCd", key = "#cdSe + '-' + #cd")
//    public String getCdNmByCdSeAndCd(String cdSe, String cd) {
//        return codeDao.getCdNmByCdSeAndCd(cdSe, cd);
//    }
//
//    public int saveCommCd(CommCd commCd) {
//        return codeDao.insertCommCd(commCd);
//    }
}