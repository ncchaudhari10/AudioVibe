package com.project.audiovibe.data;

public class amountPaid {

    private Integer plan_id;
    private String plan_name;
    private Integer price;

    private Integer duration;

    private Double amount_to_be_paid;

    public Integer getPlan_id() {
        return plan_id;
    }

    public void setPlan_id(Integer plan_id) {
        this.plan_id = plan_id;
    }

    public String getPlan_name() {
        return plan_name;
    }

    public void setPlan_name(String plan_name) {
        this.plan_name = plan_name;
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    public Integer getDuration() {
        return duration;
    }

    public void setDuration(Integer duration) {
        this.duration = duration;
    }

    public Double getAmount_to_be_paid() {
        return amount_to_be_paid;
    }

    public void setAmount_to_be_paid(Double amount_to_be_paid) {
        this.amount_to_be_paid = amount_to_be_paid;
    }
}
