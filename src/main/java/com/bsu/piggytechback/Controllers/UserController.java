package com.bsu.piggytechback.Controllers;

import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.GetMapping;

import com.bsu.piggytechback.Model.UserModel;

@RestController
public class UserController {
    
    //http:localhost:8080/user
    @GetMapping("/user")
    public UserModel getUser(){
        return new UserModel(1, "Roniel", "rm@gmail.com", "rm");
    }
}
