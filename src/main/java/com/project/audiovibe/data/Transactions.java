package com.project.audiovibe.data;


import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

import java.sql.Date;

@Entity
@Table(name = "transactions")
public class Transactions {

    private String plan_id;
    private String user_id;
    private String offer_id;
    private String option_id;
    private Float amount_to_be_paid;
    private Date date;

    @Id
    private Integer transaction_id;

    public Transactions() {
    }

    public String getPlan_id() {
        return plan_id;
    }

    public void setPlan_id(String plan_id) {
        this.plan_id = plan_id;
    }

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    public String getOffer_id() {
        return offer_id;
    }

    public void setOffer_id(String offer_id) {
        this.offer_id = offer_id;
    }

    public String getOption_id() {
        return option_id;
    }

    public void setOption_id(String option_id) {
        this.option_id = option_id;
    }

    public Float getAmount_to_be_paid() {
        return amount_to_be_paid;
    }

    public void setAmount_to_be_paid(Float amount_to_be_paid) {
        this.amount_to_be_paid = amount_to_be_paid;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Integer getTransaction_id() {
        return transaction_id;
    }

    public void setTransaction_id(Integer transaction_id) {
        this.transaction_id = transaction_id;
    }
}
