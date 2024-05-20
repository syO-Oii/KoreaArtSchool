package com.maximum.KoreaArtSchool.entity;

import jakarta.persistence.*;
import lombok.Data;

import java.sql.Timestamp;

@Data
@Entity
public class CommCd {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "cd_id")
    private int cdId;

    @Column(name = "cd_se", nullable = false, length = 10)
    private String cdSe;

    @Column(name = "cd", nullable = false, length = 10)
    private String cd;

    @Column(name = "cd_nm", nullable = false, length = 20)
    private String cdNm;

    @Column(name = "cd_desc", length = 100)
    private String cdDesc;

    @Column(name = "is_yn", nullable = false, length = 2)
    private String isYn;

    @Column(name = "created_at", nullable = false, updatable = false, insertable = false, columnDefinition = "TIMESTAMP DEFAULT CURRENT_TIMESTAMP")
    private Timestamp createdAt;

    @Column(name = "deleted_at")
    private Timestamp deletedAt;
}
