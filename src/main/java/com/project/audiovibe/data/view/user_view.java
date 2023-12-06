package com.project.audiovibe.data.view;


import jakarta.persistence.Entity;
import jakarta.persistence.Id;


@Entity
public class user_view {

    @Id
    private String email;
    private String name;
    private Integer plan_id;

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getPlan_id() {
        return plan_id;
    }

    public void setPlan_id(Integer plan_id) {
        this.plan_id = plan_id;
    }
}
