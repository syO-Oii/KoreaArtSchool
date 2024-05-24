package com.maximum.koreaartschool.repository;

import com.maximum.koreaartschool.entity.UserAcct;
import org.springframework.data.jpa.repository.JpaRepository;

import java.time.LocalDate;
import java.util.Optional;

public interface UserRepository extends JpaRepository<UserAcct, Integer> {
    Optional<UserAcct> findByEmail(String email);
    UserAcct findByBirthdateAndPhoneNumber(LocalDate birthdate, String phoneNumber);
    UserAcct findByEmailAndBirthdateAndPhoneNumber(String email, LocalDate birthdate, String phoneNumber); //이거 통합해서 못쓰나 ??
}
