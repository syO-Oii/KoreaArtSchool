package com.maximum.koreaArtSchool.service;

import com.maximum.koreaArtSchool.entity.CommCd;
import com.maximum.koreaArtSchool.entity.Rcrt;
import com.maximum.koreaArtSchool.repository.CommCdRepository;
import com.maximum.koreaArtSchool.repository.RcrtRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class RcrtService {
    private final RcrtRepository rcrtRepository;
    private final CommCdRepository commCdRepository;

    public Page<Rcrt> getAllRecruitments(int page, int size) {
        Pageable pageable = PageRequest.of(page, size, Sort.by("rcrtNo").descending());
        return rcrtRepository.findAll(pageable);
    }

    public Optional<Rcrt> getRecruitmentById(Integer rcrtNo) {
        return rcrtRepository.findRcrtWithDetails(rcrtNo);
    }

    public Page<Rcrt> searchRecruitments(String deptCd, String yearCd, int page, int size) {
        Pageable pageable = PageRequest.of(page, size, Sort.by("rcrtNo").descending());
        if (deptCd.isEmpty() && yearCd.isEmpty()) {
            return rcrtRepository.findAll(pageable);
        } else if (deptCd.isEmpty()) {
            return rcrtRepository.findByYearCd(yearCd, pageable);
        } else if (yearCd.isEmpty()) {
            return rcrtRepository.findByDeptCd(deptCd, pageable);
        } else {
            return rcrtRepository.findByDeptCdAndYearCd(deptCd, yearCd, pageable);
        }
    }

    public void saveRecruitment(Rcrt recruitment) {
        rcrtRepository.save(recruitment);
    }

    public void deleteRecruitment(Integer rcrtNo) {
        rcrtRepository.deleteById(rcrtNo);
    }

    public List<CommCd> getCommCdsByCdSe(String cdSe) {
        return commCdRepository.findByCdSe(cdSe);
    }

    @Cacheable(value = "commCd", key = "#cdSe + '-' + #cd")
    public String getCdNmByCdSeAndCd(String cdSe, String cd) {
        return commCdRepository.findByCdSeAndCd(cdSe, cd).map(CommCd::getCdNm).orElse(null);
    }

    public Rcrt mapRecruitmentCodesToNames(Rcrt rcrt) {
        rcrt.setDeptCd(getCdNmByCdSeAndCd("AC0002", rcrt.getDeptCd()));
        rcrt.setYearCd(getCdNmByCdSeAndCd("AD0001", rcrt.getYearCd()));
        rcrt.setRecruitmentCd(getCdNmByCdSeAndCd("AD0003", rcrt.getRecruitmentCd()));
        rcrt.setMtcltnYdCd(getCdNmByCdSeAndCd("AD0002", rcrt.getMtcltnYdCd()));
        return rcrt;
    }
}