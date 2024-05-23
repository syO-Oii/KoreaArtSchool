package com.maximum.koreaArtSchool.entity;

import jakarta.persistence.*;
import lombok.Data;

@Data
@Table(name = "RCRT_APPLICANT")
@Entity
public class RcrtApplicant {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "RCRT_UNIT_NO")
    private Integer rcrtUnitNo;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "RCRT_NO")
    private Rcrt rcrt;

    @Column(name = "RCRT_CD", nullable = false, length = 10)
    private String rcrtCd;

    @Column(name = "DEPT_CD", nullable = false, length = 10)
    private String deptCd;

    @Column(name = "RCRT_PSCP", nullable = false)
    private Integer rcrtPscp;

    @Column(name = "SELECT_PSCP", nullable = false)
    private Integer selectPscp;
}
