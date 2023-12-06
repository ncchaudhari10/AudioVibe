package com.project.audiovibe.data;


import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "plans_offers")
public class Plans_Offers {

    @Id
    private Integer plan_id;
    @Id
    private Integer offer_id;

    public Integer getPlan_id() {
        return plan_id;
    }

    public void setPlan_id(Integer plan_id) {
        this.plan_id = plan_id;
    }

    public Integer getOffer_id() {
        return offer_id;
    }

    public void setOffer_id(Integer offer_id) {
        this.offer_id = offer_id;
    }
}
