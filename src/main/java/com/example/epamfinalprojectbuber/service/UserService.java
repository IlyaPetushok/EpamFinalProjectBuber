package com.example.epamfinalprojectbuber.service;

import com.example.epamfinalprojectbuber.entity.User;

public interface UserService {
    User authorization(String login,String password);
    boolean registration(String sex,String status,String name,String login,String password,String email);
}
