package com.bsu.piggytechback.Controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import com.bsu.piggytechback.Model.UserModel;

@RestController
public class UserController {

    // http:localhost:8080/user
    @GetMapping("/user")
    public UserModel getUser(){
        return new UserModel(1, "Roniel", "rm@gmail.com", "rm");
    }

    public String getMethodName(@RequestParam String param){
        return new String();
    }

    // http://localhost:8080/users
    @GetMapping("/users")
    public List<UserModel> getUsers(){
        List<UserModel> users = new ArrayList<>();
        users.add(new UserModel(2, "Kira", "maingundam1@gmail.com", "freedom"));
        users.add(new UserModel(3, "Athrun", "suitgundam2@gmail.com", "justice"));
        users.add(new UserModel(4, "Shinn", "mobilegundam3@gmail.com", "destiny"));
        return users;
    }

    // http://localhost:8080/user/archangel
    @GetMapping("/user/{name}")
    public UserModel getUserFromName(@PathVariable("name")String name){
        return new UserModel (5, "Archangel", "shipgundam4@gmail.com", "mothership");
    }

}
