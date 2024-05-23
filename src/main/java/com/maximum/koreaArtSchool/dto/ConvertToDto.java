package com.maximum.koreaArtSchool.dto;

import com.maximum.koreaArtSchool.entity.CommCd;

public class ConvertToDto {

    public CommonCodeDto convertToDto(CommCd commCd) {
        CommonCodeDto commonCodeDto = new CommonCodeDto();
        commonCodeDto.setId(commCd.getCdId());
        commonCodeDto.setCdSe(commCd.getCdSe());
        commonCodeDto.setCd(commCd.getCd());
        commonCodeDto.setCdNm(commCd.getCdNm());
        commonCodeDto.setCdDesc(commCd.getCdDesc());
        commonCodeDto.setIsYn(commCd.getIsYn());
        return commonCodeDto;
    }

}
