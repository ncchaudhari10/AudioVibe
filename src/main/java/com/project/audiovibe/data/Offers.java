package com.project.audiovibe.data;


import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;


@Entity
@Table(name = "offers")
public class Offers {

    @Id
    private Integer offer_id;
    private String card_type;
    private String company_name;
    private Integer discount_percentage;

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

    public Integer getDiscount_percentage() {
        return discount_percentage;
    }

    public void setDiscount_percentage(Integer discount_percentage) {
        this.discount_percentage = discount_percentage;
    }
}
