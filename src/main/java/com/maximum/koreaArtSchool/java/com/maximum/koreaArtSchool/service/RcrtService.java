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
import org.springframework.util.StringUtils;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class RcrtService {
    private final RcrtRepository rcrtRepository;
    private final CommCdRepository commCdRepository;

    public Optional<Rcrt> getRecruitmentById(Integer rcrtNo) {
        return rcrtRepository.findById(rcrtNo);
    }

    public Page<Rcrt> getAllRecruitments(int page, int size) {
        Pageable pageable = PageRequest.of(page, size, Sort.by("rcrtNo").descending());
        return rcrtRepository.findAll(pageable);
    }

    public List<Rcrt> mapRecruitmentsToNames(List<Rcrt> recruitments) {
        return recruitments.stream()
                .map(this::mapRecruitmentCodesToNames)
                .collect(Collectors.toList());
    }

    public Rcrt mapRecruitmentCodesToNames(Rcrt rcrt) {
        rcrt.setDeptCd(getCdNmByCdSeAndCd("AC0002", rcrt.getDeptCd()));
        rcrt.setYearCd(getCdNmByCdSeAndCd("AD0001", rcrt.getYearCd()));
        rcrt.setRecruitmentCd(getCdNmByCdSeAndCd("AD0003", rcrt.getRecruitmentCd()));
        rcrt.setMtcltnYdCd(getCdNmByCdSeAndCd("AD0002", rcrt.getMtcltnYdCd()));
        return rcrt;
    }

    public Page<Rcrt> searchRecruitments(String deptCd, String yearCd, int page, int size) {
        Pageable pageable = PageRequest.of(page, size, Sort.by("rcrtNo").descending());
        if (StringUtils.isEmpty(deptCd) && StringUtils.isEmpty(yearCd)) {
            return rcrtRepository.findAll(pageable);
        } else if (StringUtils.isEmpty(deptCd)) {
            return rcrtRepository.findByYearCd(yearCd, pageable);
        } else if (StringUtils.isEmpty(yearCd)) {
            return rcrtRepository.findByDeptCd(deptCd, pageable);
        } else {
            return rcrtRepository.findByDeptCdAndYearCd(deptCd, yearCd, pageable);
        }
    }

    public List<CommCd> getCommCdsByCdSe(String cdSe) {
        return commCdRepository.findByCdSe(cdSe);
    }

    public void updateRecruitment(Integer id, Rcrt updatedRecruitment) {
        Optional<Rcrt> existingRecruitment = rcrtRepository.findById(id);
        existingRecruitment.ifPresent(recruitment -> {
            recruitment.setDeptCd(updatedRecruitment.getDeptCd());
            recruitment.setRecruitmentCd(updatedRecruitment.getRecruitmentCd());
            recruitment.setYearCd(updatedRecruitment.getYearCd());
            recruitment.setMtcltnYdCd(updatedRecruitment.getMtcltnYdCd());
            rcrtRepository.save(recruitment);
        });
    }

    @Cacheable(value = "commCd", key = "#cdSe + '-' + #cd")
    public String getCdNmByCdSeAndCd(String cdSe, String cd) {
        return commCdRepository.findByCdSeAndCd(cdSe, cd).map(CommCd::getCdNm).orElse(null);
    }
}