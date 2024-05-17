package com.maximum.koreaartschool.dao;

import com.maximum.koreaartschool.dto.TestDTO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface TestDAO {
    List<TestDTO> list();
}
