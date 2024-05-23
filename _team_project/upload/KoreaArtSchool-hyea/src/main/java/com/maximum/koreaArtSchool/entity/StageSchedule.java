package com.maximum.koreaArtSchool.entity;

import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name = "STG_SCHDL")
public class StageSchedule {
    @Id
    @Column(name = "RCRT_NO")
    private Long recruitmentNo;

    @Column(name = "STG_SCHDL_NAME", nullable = false, length = 20)
    private String stageScheduleNm;

//    @ManyToOne(fetch = FetchType.LAZY)
//    @JoinColumn(name = "EVL_STG_CD")
    @Column(name = "EVL_STG_CD", nullable = false, length = 10)
    private String evaluationStageCd;

    @Column(name = "BGNG_YMD", nullable = false, length = 8)
    private String beginDate;

    @Column(name = "END_YMD", nullable = false, length = 8)
    private String endDate;

    @Column(name = "PRSNTN_YMD", nullable = false, length = 8)
    private String presentationDate;

}
