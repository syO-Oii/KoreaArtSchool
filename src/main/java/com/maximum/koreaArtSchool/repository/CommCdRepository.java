package com.maximum.koreaArtSchool.repository;

import com.maximum.koreaArtSchool.entity.CommCd;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

public interface CommCdRepository extends JpaRepository<CommCd, Integer> {
    List<CommCd> findByCdSe(String cdSe);
    List<CommCd> findByCdSeAndCdNm(String cdSe, String cdNm);
    Optional<CommCd> findByCdSeAndCd(String cdSe, String cd);
    List<CommCd> findByCdNm(String cdNm);
    Optional<CommCd> findByCd(String cd);
    Page<CommCd> findAll(Pageable pageable);
}
