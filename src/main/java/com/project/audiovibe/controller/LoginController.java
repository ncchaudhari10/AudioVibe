package com.project.audiovibe.controller;


import com.project.audiovibe.dto.request.Credentials;
import com.project.audiovibe.dto.request.PassUpdate;
import com.project.audiovibe.dto.request.signUp;
import com.project.audiovibe.dto.response.LoginResponse;
import com.project.audiovibe.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class LoginController {

    @Autowired
    private LoginService loginService;
    @PostMapping("/signUp")
    public String signUp(@RequestBody signUp signup)
    {
         return loginService.signUp(signup);
    }

    @PostMapping("/login")
    public LoginResponse login(@RequestBody Credentials creds)
    {
        return loginService.authenticate(creds);

    }

    @PostMapping("/updatePassword")
    public String updatePassword(@RequestBody PassUpdate cred)
    {
        return loginService.updatePassword(cred);
    }
}