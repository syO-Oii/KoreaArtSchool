package com.maximum.koreaartschool.entity;

import jakarta.persistence.*;
import org.hibernate.annotations.GenericGenerator;


@Entity
@Table(name="APL_EMAIIL_VERIFICATIONS")
public class AplEmail {

    @Id
    @GeneratedValue(generator = "UUID_GENERATOR")
    @GenericGenerator(name="UUID_GENERATOR", strategy = "org.hibernate.id.UUIDGenerator")
    @Column(name = "VERIFICATION_ID")
    private String verificationId;

    @Column(name = "APL_NM")
    private String aplNm;
}

//CREATE TABLE APL_EMAIIL_VERIFICATIONS (
//    VERIFICATION_ID VARCHAR(255) PRIMARY KEY,
//    APL_NM VARCHAR(255)
//);