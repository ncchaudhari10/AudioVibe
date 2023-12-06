package com.project.audiovibe.data;


import jakarta.persistence.*;

import java.math.BigInteger;

@Entity
@Table(name = "payment_options")
@IdClass(Payment_Options_Key.class)
public class Payment_Options {

    @Id
    @Column(name = "user_id")
    private Integer userid;
    private String card_type;
    private String company_name;
    private BigInteger card_number;
    @Id
    private Integer option_id;

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getCard_type() {
        return card_type;
    }

    public void setCard_type(String card_type) {
        this.card_type = card_type;
    }

    public String getCompany_name() {
        return company_name;
    }

    public void setCompany_name(String company_name) {
        this.company_name = company_name;
    }

    public BigInteger getCard_number() {
        return card_number;
    }

    public void setCard_number(BigInteger card_number) {
        this.card_number = card_number;
    }

    public Integer getOption_id() {
        return option_id;
    }

    public void setOption_id(Integer option_id) {
        this.option_id = option_id;
    }
}
