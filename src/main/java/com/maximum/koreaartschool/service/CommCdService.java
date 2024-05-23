package com.maximum.koreaartschool.service;

import com.maximum.koreaartschool.dao.CodeMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CommCdService {

    @Autowired
    private CodeMapper codeDao;

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