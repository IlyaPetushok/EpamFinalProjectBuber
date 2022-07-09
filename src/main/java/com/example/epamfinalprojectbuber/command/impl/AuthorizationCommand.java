package com.example.epamfinalprojectbuber.command.impl;

import com.example.epamfinalprojectbuber.command.Command;
import com.example.epamfinalprojectbuber.entity.User;
import com.example.epamfinalprojectbuber.service.UserService;
import com.example.epamfinalprojectbuber.service.impl.UserServiceImpl;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class AuthorizationCommand implements Command {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) {
        String page;
        String login=request.getParameter("login");
        String password=request.getParameter("password");
        UserService userService= UserServiceImpl.getInstance();
        User user=userService.authorization(login,password);
        if(user.getId()!=0){
            page="/pages/entrance/input.jsp";
        }else{
            request.setAttribute("error","incorrect login or password");
            page="index.jsp";
        }

        return page;
    }
}
