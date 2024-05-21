package com.maximum.koreaartschool.service;

import com.maximum.koreaartschool.dao.ApplicantDao;
import com.maximum.koreaartschool.dto.ApplicantDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class ApplicantService {


    @Autowired
    private ApplicantDao applicantDao;





}
