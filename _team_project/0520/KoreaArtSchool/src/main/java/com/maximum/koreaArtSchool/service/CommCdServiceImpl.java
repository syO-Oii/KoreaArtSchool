package com.maximum.koreaArtSchool.service;

import com.maximum.koreaArtSchool.entity.CommCd;
import com.maximum.koreaArtSchool.repository.CommCdRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@RequiredArgsConstructor
@Service
public class CommCdServiceImpl implements CommCdService {

    private final CommCdRepository commCdRepository;

    @Override
    public void addCode(String cd, String cdSe, String cdNm, String cdDesc, String isYn) {
        CommCd newCode = new CommCd();
        newCode.setCd(cd);
        newCode.setCdSe(cdSe);
        newCode.setCdNm(cdNm);
        newCode.setCdDesc(cdDesc);
        newCode.setIsYn(isYn);
        commCdRepository.save(newCode);
    }

    @Override
    public void updateCode(Integer cdId, String newCd, String newCdSe, String newCdNm, String newCdDesc, String newIsYn) {
        Optional<CommCd> optionalCommCd = commCdRepository.findById(cdId);
        if (optionalCommCd.isPresent()) {
            CommCd commCd = optionalCommCd.get();
            commCd.setCd(newCd);
            commCd.setCdSe(newCdSe);
            commCd.setCdNm(newCdNm);
            commCd.setCdDesc(newCdDesc);
            commCd.setIsYn(newIsYn);
            commCdRepository.save(commCd);
        } else {
        }
    }

    @Override
    public void deleteCode(Integer cdId) {
        Optional<CommCd> optionalCommCd = commCdRepository.findById(cdId);
        optionalCommCd.ifPresent(commCdRepository::delete);
    }

    @Override
    public CommCd getCommCdById(Integer cdId) {
        return commCdRepository.findById(cdId).orElse(null);
    }

    @Cacheable("commCds")
    public List<CommCd> getAllCommCds() {
        return commCdRepository.findAll();
    }

    public List<String> getAllCdNmList() {
        List<CommCd> allCommCds = commCdRepository.findAll();
        return allCommCds.stream()
                .map(CommCd::getCdNm)
                .collect(Collectors.toList());
    }

    @Cacheable(value = "commCdsByCdSe", key = "#cdSe")
    public List<CommCd> getCommCdsByCdSe(String cdSe) {
        return commCdRepository.findByCdSe(cdSe);
    }

    @Cacheable(value = "commCd", key = "#cdSe + '-' + #cd")
    public String getCdNmByCdSeAndCd(String cdSe, String cd) {
        return commCdRepository.findByCdSeAndCd(cdSe, cd).map(CommCd::getCdNm).orElse(null);
    }

    public List<CommCd> searchByCdNm(String cdNm) {
        return commCdRepository.findByCdNm(cdNm);
    }

    public CommCd saveCommCd(CommCd commCd) {
        return commCdRepository.save(commCd);
    }
}
