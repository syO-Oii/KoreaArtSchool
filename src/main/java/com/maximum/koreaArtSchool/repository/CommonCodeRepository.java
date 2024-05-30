package com.maximum.koreaArtSchool.repository;

import com.maximum.koreaArtSchool.entity.CommonCode;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import java.util.List;
import java.util.Optional;

@Repository
public interface CommonCodeRepository extends JpaRepository<CommonCode, Integer>, JpaSpecificationExecutor<CommonCode> {
    Optional<CommonCode> findByCdSeAndCd(String cdSe, String cd);

    List<CommonCode> findByCdSe(String cdSe);

    @Query("SELECT DISTINCT c.cdSe FROM CommonCode c")
    List<String> findAllDetailCode();
}
