package com.project.audiovibe.data;


import jakarta.persistence.*;

@Entity
@Table(name = "users")
public class User {

    @Id
    private Integer user_id;
    private String name;
    private String email;
    private String password;
    private Integer plan_id;
    private String country;

    public Integer getUser_id() {
        return user_id;
    }

    public void setUser_id(Integer user_id) {
        this.user_id = user_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Integer getPlan_id() {
        return plan_id;
    }

    public void setPlan_id(Integer plan_id) {
        this.plan_id = plan_id;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }
}
