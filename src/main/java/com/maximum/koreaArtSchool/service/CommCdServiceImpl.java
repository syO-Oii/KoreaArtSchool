package com.maximum.koreaArtSchool.service;

import com.maximum.koreaArtSchool.dto.CommonCodeDto;
import com.maximum.koreaArtSchool.dto.ConvertToDto;
import com.maximum.koreaArtSchool.entity.CommCd;
import com.maximum.koreaArtSchool.repository.CommCdRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.stream.Collectors;

@RequiredArgsConstructor
@Service
public class CommCdServiceImpl implements CommCdService {

    @Autowired
    private final CommCdRepository commCdRepository;
    private final ConvertToDto converter = new ConvertToDto();

    @Override
    public List<CommCd> searchByCdSeAndCdNm(String cdSe, String cdNm) {
        if (cdSe != null && cdNm != null) {
            return commCdRepository.findByCdSeAndCdNm(cdSe, cdNm);
        } else if (cdSe != null) {
            return commCdRepository.findByCdSe(cdSe);
        } else if (cdNm != null) {
            return commCdRepository.findByCdNm(cdNm);
        } else {
            return commCdRepository.findAll();
        }
    }

    @Override
    public CommonCodeDto getCommonCodeById(Integer cdId) {
        CommCd commCd = commCdRepository.findById(cdId).orElse(null);
        if (commCd != null) {
            return converter.convertToDto(commCd);
        } else {
            return null;
        }
    }

    @Override
    public Page<CommCd> getAllCommCd(int page, int size) {
        Pageable pageable = PageRequest.of(page, size, Sort.by("CdId").descending());
        return commCdRepository.findAll(pageable);
    }

    @Override
    public List<String> getAllCdNmList() {
        List<CommCd> allCommCds = commCdRepository.findAll();
        return allCommCds.stream()
                .map(CommCd::getCdNm)
                .collect(Collectors.toList());
    }

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
    public CommCd getCommCdById(Integer cdId) {
        return commCdRepository.findById(cdId).orElse(null);
    }

    @Cacheable("commCds")
    @Override
    public List<CommCd> getAllCommCds() {
        return commCdRepository.findAll();
    }

    @Cacheable(value = "commCdsByCdSe", key = "#cdSe")
    @Override
    public List<CommCd> getCommCdsByCdSe(String cdSe) {
        return commCdRepository.findByCdSe(cdSe);
    }

    @Cacheable(value = "commCd", key = "#cdSe + '-' + #cd")
    @Override
    public String getCdNmByCdSeAndCd(String cdSe, String cd) {
        return commCdRepository.findByCdSeAndCd(cdSe, cd).map(CommCd::getCdNm).orElse(null);
    }

    @Transactional
    @Override
    public CommCd updateCommCd(Integer cdId, String cd, String cdSe, String cdNm, String cdDesc, String isYn) {
        CommCd existingCommCd = commCdRepository.findById(cdId)
                .orElseThrow(() -> new IllegalArgumentException("Invalid CommCd ID: " + cdId));
        existingCommCd.setCd(cd);
        existingCommCd.setCdSe(cdSe);
        existingCommCd.setCdNm(cdNm);
        existingCommCd.setCdDesc(cdDesc);
        existingCommCd.setIsYn(isYn);
        return commCdRepository.save(existingCommCd);
    }

    @Transactional
    @Override
    public void deleteCommCd(Integer cdId) {
        commCdRepository.deleteById(cdId);
    }
}

