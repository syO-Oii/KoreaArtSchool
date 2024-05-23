package com.maximum.koreaArtSchool.repository;

import com.maximum.koreaArtSchool.entity.Rcrt;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.Optional;

public interface RcrtRepository extends JpaRepository<Rcrt, Integer> {
    @Query("SELECT r FROM Rcrt r " +
            "LEFT JOIN FETCH r.rcrtSchdls rs " +
            "LEFT JOIN FETCH r.rcrtApplicants ra " +
            "WHERE r.rcrtNo = :rcrtNo")
    Optional<Rcrt> findRcrtWithDetails(@Param("rcrtNo") Integer rcrtNo);
    Page<Rcrt> findByDeptCd(String deptCd, Pageable pageable);
    Page<Rcrt> findByYearCd(String yearCd, Pageable pageable);
    Page<Rcrt> findByDeptCdAndYearCd(String deptCd, String yearCd, Pageable pageable);
    Page<Rcrt> findAll(Pageable pageable);
}
