package com.project.audiovibe.dao;

import com.project.audiovibe.data.Payment_Options;
import com.project.audiovibe.data.Payment_Options_Key;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.query.Procedure;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.math.BigInteger;
import java.util.List;

@Repository
public interface PaymentOptionsRepository extends JpaRepository<Payment_Options, Payment_Options_Key> {
    List<Payment_Options> findAllByUserid(Integer userId);

    @Query(value = "SELECT insert_payment_option(:userId, :cardType, :companyName, :cardNumber, :optionId)", nativeQuery = true)
    Integer insertPaymentOption(
            @Param("userId") Integer userId,
            @Param("cardType") String cardType,
            @Param("companyName") String companyName,
            @Param("cardNumber") BigInteger cardNumber,
            @Param("optionId") Integer optionId
    );

    @Query(value = "SELECT DeletePaymentOption(:userId, :cardNumber)", nativeQuery = true)
    Boolean DeletePaymentOption(
            @Param("userId") Integer userId,
            @Param("cardNumber") BigInteger cardNumber
    );


}
