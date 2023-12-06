package com.project.audiovibe.dao;

import com.project.audiovibe.data.Transactions;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.query.Procedure;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.List;

@Repository
public interface TransactionRepository extends JpaRepository<Transactions, Integer> {

//    List<Transactions> findAllByUser_id(String user_id);
    @Procedure(name = "InsertTransaction")
    public void InsertTransaction(
            @Param("p_user_id") Integer p_user_id,
            @Param("p_plan_id") Integer p_plan_id,
            @Param("p_option_id") Integer p_option_id,
            @Param("p_offer_id") Integer p_offer_id,
            @Param("p_amount_to_be_paid") Double p_amount_to_be_paid

    );

}
