package com.maximum.koreaArtSchool.entity;

import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name = "RCRT_SCHDL")
public class RcrtSchdl {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "RCRT_SCHDL_NO")
    private Integer rcrtSchdlNo;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "RCRT_NO")
    private Rcrt rcrt;

    @Column(name = "RCRT_SCHDL_NM", nullable = false, length = 20)
    private String rcrtSchdlNm;

    @Column(name = "EVL_STG_CD", nullable = false, length = 10)
    private String evlStgCd;

    @Column(name = "BGNG_YMD", nullable = false, length = 8)
    private String beginYmd;

    @Column(name = "END_YMD", nullable = false, length = 8)
    private String endYmd;

    @Column(name = "PRSNTN_YMD", nullable = false, length = 8)
    private String prsntnYmd;

}
