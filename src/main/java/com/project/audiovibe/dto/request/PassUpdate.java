package com.project.audiovibe.dto.request;

public class PassUpdate {

    private String email;
    private String old_pass;
    private String new_pass;

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getOld_pass() {
        return old_pass;
    }

    public void setOld_pass(String old_pass) {
        this.old_pass = old_pass;
    }

    public String getNew_pass() {
        return new_pass;
    }

    public void setNew_pass(String new_pass) {
        this.new_pass = new_pass;
    }
}
