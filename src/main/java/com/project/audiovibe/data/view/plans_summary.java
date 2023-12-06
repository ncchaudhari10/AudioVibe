package com.project.audiovibe.data.view;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import org.hibernate.annotations.Immutable;


@Entity
public class plans_summary {

    @Id
    private Integer plan_id;
    private Integer price;
    private String plan_name;
    private Integer duration;

    // Constructors, getters, setters


    public Integer getPlan_id() {
        return plan_id;
    }

    public void setPlan_id(Integer plan_id) {
        this.plan_id = plan_id;
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    public String getPlan_name() {
        return plan_name;
    }

    public void setPlan_name(String plan_name) {
        this.plan_name = plan_name;
    }

    public Integer getDuration() {
        return duration;
    }

    public void setDuration(Integer duration) {
        this.duration = duration;
    }

    public plans_summary() {
    }
}
