package com.maximum.koreaartschool.dao;

import com.maximum.koreaartschool.dto.CommCd;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public class CodeDao {
    public List<CommCd> findAll() {
        return null;
    }

    public List<CommCd> getCommCdsByCdSe(@Param("cdSe") String cdSe) {
        return null;
    }

    public String getCdNmByCdSeAndCd(@Param("cdSe") String cdSe, @Param("cd") String cd) {
        return null;
    }

    public int insertCommCd(CommCd commCd) {
        return 0;
    }
}
