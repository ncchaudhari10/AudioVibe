package com.project.audiovibe.service;


import com.project.audiovibe.dao.LoginRepository;
import com.project.audiovibe.dto.request.Credentials;
import com.project.audiovibe.dto.request.PassUpdate;
import com.project.audiovibe.dto.request.signUp;
import com.project.audiovibe.dto.response.LoginResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.UUID;

@Service
@Transactional
public class LoginService {

    @Autowired
    public LoginRepository dao;
    public String signUp(signUp signup) {
        try {
            dao.insertUser(signup.getName(), signup.getEmail(), signup.getPassword(), "1");
            return "success";
        }
        catch (Exception e)
        {
            return "failed, "+e.getClass().getName();
        }

    }

    public LoginResponse authenticate(Credentials credentials) {

        boolean res = dao.checkCredentials(credentials.getEmail(), credentials.getPassword());
        LoginResponse loginResponse = new LoginResponse();
        String token ="login failed";
        if(res)
        {
            token = "login successful";
        }
        loginResponse.setToken(token);
        return loginResponse;


    }

    public String updatePassword(PassUpdate cred) {

        Boolean res = dao.UpdatePassword(cred.getEmail(), cred.getOld_pass(), cred.getNew_pass());
        if(res)
        {
            return "Password Changed Successfully";
        }
        else
        {
            return "email or old password is not valid";
        }
    }
}
