package com.example.epamfinalprojectbuber.dao;

import com.example.epamfinalprojectbuber.entity.User;

public interface UserDao {
    User authenticate(String login, String Password);
    boolean registration(User user);
}
