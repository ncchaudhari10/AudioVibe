package com.project.audiovibe.data.view;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity(name = "offers_summary")
public class OffersSummary {

    @Id
    private Integer offer_id;
    private String card_type;
    private String company_name;
    private Integer discount;

    public Integer getOffer_id() {
        return offer_id;
    }

    public void setOffer_id(Integer offer_id) {
        this.offer_id = offer_id;
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

    public Integer getDiscount() {
        return discount;
    }

    public void setDiscount(Integer discount) {
        this.discount = discount;
    }
}
