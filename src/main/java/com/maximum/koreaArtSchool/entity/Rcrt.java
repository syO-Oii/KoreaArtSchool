package com.maximum.koreaArtSchool.entity;

import jakarta.persistence.*;
import lombok.Data;
import java.util.List;

@Data
@Table(name = "RCRT")
@Entity
public class Rcrt {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "RCRT_NO")
    private Integer rcrtNo;

    @Column(name = "DEPT_CD", nullable = false)
    private String deptCd;

    @Column(name = "YEAR_CD", nullable = false, length = 10)
    private String yearCd;

    @Column(name = "RCRT_CD", nullable = false, length = 10)
    private String recruitmentCd;

    @Column(name = "MTCLTN_YD_CD", nullable = false, length = 10)
    private String mtcltnYdCd;

    @Column(name = "EDU_BGNG_YMD", nullable = false, length = 8)
    private String eduBgngYmd;

    @Column(name = "EDU_END_YMD", nullable = false, length = 8)
    private String eduEndYmd;

    @OneToMany(mappedBy = "rcrt", fetch = FetchType.LAZY)
    private List<RcrtSchdl> rcrtSchdls;

    @OneToMany(mappedBy = "rcrt", fetch = FetchType.LAZY)
    private List<RcrtApplicant> rcrtApplicants;

}
