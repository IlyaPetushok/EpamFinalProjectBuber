package com.example.epamfinalprojectbuber.command.impl;

import com.example.epamfinalprojectbuber.command.Command;
import com.example.epamfinalprojectbuber.entity.User;
import com.example.epamfinalprojectbuber.service.UserService;
import com.example.epamfinalprojectbuber.service.impl.UserServiceImpl;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class RegistrationCommand implements Command {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) {
        String page;
        String sex=request.getParameter("sex");
        String status=request.getParameter("status");
        String name=request.getParameter("name");
        String login=request.getParameter("login");
        String password=request.getParameter("password");
        String email=request.getParameter("email");
        //photo
        UserService userService= UserServiceImpl.getInstance();
        if(userService.registration(sex,status,name,login,password,email)){
            page="/";
        }else {
            page="/pages/registration/reg.jsp";
        }
        return page;
    }
}
