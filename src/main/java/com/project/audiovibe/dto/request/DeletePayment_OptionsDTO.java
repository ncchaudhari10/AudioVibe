package com.project.audiovibe.dto.request;

import java.math.BigInteger;

public class DeletePayment_OptionsDTO {

    private String email;
    private BigInteger card_number;

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public BigInteger getCard_number() {
        return card_number;
    }

    public void setCard_number(BigInteger card_number) {
        this.card_number = card_number;
    }
}
