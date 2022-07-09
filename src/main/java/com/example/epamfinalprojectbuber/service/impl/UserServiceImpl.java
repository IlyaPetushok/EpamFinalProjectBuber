package com.example.epamfinalprojectbuber.service.impl;

import com.example.epamfinalprojectbuber.dao.UserDao;
import com.example.epamfinalprojectbuber.dao.impl.UserDaoImpl;
import com.example.epamfinalprojectbuber.entity.User;
import com.example.epamfinalprojectbuber.service.UserService;

public class UserServiceImpl implements UserService {
    private static UserServiceImpl instance = new UserServiceImpl();

    public static UserServiceImpl getInstance() {
        return instance;
    }

    @Override
    public boolean registration(String sex,String status,String name,String login,String password,String email) {
        //hash password
        User user=new User(sex,status,name,login,password,email);
        UserDao userDao= UserDaoImpl.getInstance();
        return userDao.registration(user);
    }

    @Override
    public User authorization(String login, String password) {
        UserDao userDao=UserDaoImpl.getInstance();
        User user=userDao.authenticate(login,password);
        return user;
    }
}
