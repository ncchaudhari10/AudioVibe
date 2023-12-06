package com.project.audiovibe.dto.request;

public class TransactionDto {

    private Integer option_id;
    private Integer offer_id;
    private String email;
    private Integer plan_id;

    public Integer getOption_id() {
        return option_id;
    }

    public void setOption_id(Integer option_id) {
        this.option_id = option_id;
    }

    public Integer getOffer_id() {
        return offer_id;
    }

    public void setOffer_id(Integer offer_id) {
        this.offer_id = offer_id;
    }


    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Integer getPlan_id() {
        return plan_id;
    }

    public void setPlan_id(Integer plan_id) {
        this.plan_id = plan_id;
    }
}
