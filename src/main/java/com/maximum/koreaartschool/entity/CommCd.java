package com.maximum.koreaartschool.entity;

import jakarta.persistence.*;
import lombok.Data;

import java.sql.Timestamp;

@Data
@Table(name = "COMM_CD")
@Entity
public class CommCd {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "CD_ID")
    private int cdId;

    @Column(name = "CD_SE", nullable = false, length = 10)
    private String cdSe;

    @Column(name = "CD", nullable = false, length = 10)
    private String cd;

    @Column(name = "CD_NM", nullable = false, length = 20)
    private String cdNm;

    @Column(name = "CD_DESC", length = 100)
    private String cdDesc;

    @Column(name = "IS_YN", nullable = false, length = 2)
    private String isYn;

    @Column(name = "CREATED_AT", nullable = false, updatable = false, insertable = false, columnDefinition = "TIMESTAMP DEFAULT CURRENT_TIMESTAMP")
    private Timestamp createdAt;

    @Column(name = "DELETED_AT")
    private Timestamp deletedAt;
}
