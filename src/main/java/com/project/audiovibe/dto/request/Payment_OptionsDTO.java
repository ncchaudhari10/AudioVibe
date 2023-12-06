package com.project.audiovibe.dto.request;

import java.math.BigInteger;

public class Payment_OptionsDTO {

    private String email;
    private String card_type;
    private String company_name;
    private BigInteger card_number;

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
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
}
