package com.project.audiovibe.data;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "advertisement")
public class advertisement {

    @Column(name = "ad_id")
    @Id
    private Integer adId;

    private String company_name;

    private Integer duration;

    private Integer priority_level;

    public Integer getAdId() {
        return adId;
    }

    public void setAdId(Integer adId) {
        this.adId = adId;
    }

    public String getCompany_name() {
        return company_name;
    }

    public void setCompany_name(String company_name) {
        this.company_name = company_name;
    }

    public Integer getDuration() {
        return duration;
    }

    public void setDuration(Integer duration) {
        this.duration = duration;
    }

    public Integer getPriority_level() {
        return priority_level;
    }

    public void setPriority_level(Integer priority_level) {
        this.priority_level = priority_level;
    }
}
