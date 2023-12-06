package com.project.audiovibe.data;


import java.io.Serializable;

public class Payment_Options_Key implements Serializable {

    private Integer userid;

    private Integer option_id;

    public Payment_Options_Key(Integer userid, Integer option_id) {
        this.userid = userid;
        this.option_id = option_id;
    }

    public Payment_Options_Key() {
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public Integer getOption_id() {
        return option_id;
    }

    public void setOption_id(Integer option_id) {
        this.option_id = option_id;
    }
}

