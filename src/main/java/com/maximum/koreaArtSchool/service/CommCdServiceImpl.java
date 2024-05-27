package com.maximum.koreaArtSchool.service;

import com.maximum.koreaArtSchool.dto.SearchParamCommonCode;
import com.maximum.koreaArtSchool.dto.UpdateCommonCode;
import com.maximum.koreaArtSchool.entity.CommonCode;
import com.maximum.koreaArtSchool.repository.CommonCodeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Service
public class CommonCodeServiceImpl implements CommonCodeService {

    @Autowired
    private CommonCodeRepository commonCodeRepository;
    
    @Override
    public List<String> findAllDetailCode() {
        List<String> detailCodes = commonCodeRepository.findAllDetailCode();
        if (detailCodes.isEmpty()) {
            System.out.println("No detail codes found");
        } else {
            detailCodes.forEach(code -> System.out.println("Found detail code: " + code));
        }
        return detailCodes;
    }

    @Override
    @Transactional
    public CommonCode saveCommonCode(CommonCode commCd) {
        return commonCodeRepository.save(commCd);
    }

    @Override
    @Transactional
    public CommonCode updateCommonCode(Integer commonCodeNo, UpdateCommonCode update) {
        Optional<CommonCode> optionalCommonCode = commonCodeRepository.findById(commonCodeNo);
        if (optionalCommonCode.isPresent()) {
            CommonCode commCd = optionalCommonCode.get();
            commCd.setCdSe(update.getCdSe());
            commCd.setCd(update.getCd());
            commCd.setCdNm(update.getCdNm());
            commCd.setCdDesc(update.getCdDesc());
            commCd.setIsActiveYn(update.getIsActiveYn());
            return commonCodeRepository.save(commCd);
        } else {
            throw new RuntimeException("CommonCode not found with id" + commonCodeNo);
        }
    }

    @Override
    @Transactional
    public void deleteCommonCode(Integer commonCodeNo) {
        commonCodeRepository.deleteById(commonCodeNo);
    }

    @Override
    public Page<CommonCode> findAll(Pageable pageable) {
        return commonCodeRepository.findAll(pageable);
    }

    @Override
    public Page<CommonCode> getCommonCodes(SearchParamCommonCode searchParam, int page, int size) {
        Pageable pageable = PageRequest.of(page, size);
        return search(searchParam, pageable);
    }

    private Page<CommonCode> search(SearchParamCommonCode searchParam, Pageable pageable) {
        Specification<CommonCode> spec = Specification.where(null);

        if (searchParam.getCdSe() != null && !searchParam.getCdSe().isEmpty() && !"전체".equals(searchParam.getCdSe())) {
            spec = spec.and((root, query, cb) -> cb.equal(root.get("cdSe"), searchParam.getCdSe()));
        }
        if (searchParam.getCd() != null && !searchParam.getCd().isEmpty() && !"전체".equals(searchParam.getCd())) {
            spec = spec.and((root, query, cb) -> cb.equal(root.get("cd"), searchParam.getCd()));
        }
        if (searchParam.getCdNm() != null && !searchParam.getCdNm().isEmpty() && !"전체".equals(searchParam.getCdNm())) {
            spec = spec.and((root, query, cb) -> cb.like(root.get("cdNm"), "%" + searchParam.getCdNm() + "%"));
        }

        return commonCodeRepository.findAll(spec, pageable);
    }
}
