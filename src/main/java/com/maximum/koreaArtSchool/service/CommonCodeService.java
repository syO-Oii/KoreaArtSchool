package com.maximum.koreaArtSchool.service;

import com.maximum.koreaArtSchool.dto.SearchParamCommonCode;
import com.maximum.koreaArtSchool.dto.UpdateCommonCode;
import com.maximum.koreaArtSchool.entity.CommonCode;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public interface CommonCodeService {
    List<String> findAllDetailCode();

    CommonCode saveCommonCode(CommonCode commCd);

    CommonCode updateCommonCode(Integer commonCodeNo, UpdateCommonCode update);

    void deleteCommonCode(Integer commonCodeNo);

    Page<CommonCode> findAll(Pageable pageable);

    Page<CommonCode> getCommonCodes(SearchParamCommonCode searchParam, int page, int size);
}
