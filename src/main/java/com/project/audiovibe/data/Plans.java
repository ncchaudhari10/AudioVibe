package com.project.audiovibe.data;


import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;


@Entity
@Table(name = "plans")
public class Plans {

    @Id
    private String plan_id;
    private String Plan_name;
    private Integer Duration;
    private Integer Premium_level;
    private Integer price;

    public String getPlan_id() {
        return plan_id;
    }

    public void setPlan_id(String plan_id) {
        this.plan_id = plan_id;
    }

    public String getPlan_name() {
        return Plan_name;
    }

    public void setPlan_name(String plan_name) {
        Plan_name = plan_name;
    }

    public Integer getDuration() {
        return Duration;
    }

    public void setDuration(Integer duration) {
        Duration = duration;
    }

    public Integer getPremium_level() {
        return Premium_level;
    }

    public void setPremium_level(Integer premium_level) {
        Premium_level = premium_level;
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }
}
