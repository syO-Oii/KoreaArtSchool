package com.maximum.koreaartschool.repository;

import com.maximum.koreaartschool.entity.CommCd;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

public interface CommCdRepository extends JpaRepository<CommCd, Integer> {
    List<CommCd> findByCdSe(String cdSe);
    Optional<CommCd> findByCdSeAndCd(String cdSe, String cd);
}
