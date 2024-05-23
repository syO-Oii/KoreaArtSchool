package com.maximum.koreaArtSchool.entity;

import jakarta.persistence.*;
import lombok.Data;

@Data
@Table(name = "RCRT")
@Entity
public class Recruitment {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "RCRT_NO")
    private Integer recruitmentNo;

    @Column(name = "DEPT_CD", nullable = false)
    private String deptCd;

    @Column(name = "YEAR_CODE", nullable = false)
    private String yearCode;

    @Column(name = "RCRT_CD", nullable = false)
    private String recruitmentCd;

    @Column(name = "MTCLTN_YD_CD", nullable = false)
    private String mtcltnYdCd;

    @Column(name = "EDU_BGNG_YMD", nullable = false)
    private String eduBgngYmd;

    @Column(name = "EDU_END_YMD", nullable = false)
    private String eduEndYmd;
}
