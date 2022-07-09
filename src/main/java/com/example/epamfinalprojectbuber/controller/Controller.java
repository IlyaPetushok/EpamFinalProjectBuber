package com.example.epamfinalprojectbuber.controller;

import com.example.epamfinalprojectbuber.command.Command;
import com.example.epamfinalprojectbuber.command.CommandType;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "buber", value = "/buber")
public class Controller extends HttpServlet {
    private final String COMMAND="command";
    public void init() {}

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        response.setContentType("text/html");

        String commandStr=request.getParameter(COMMAND);
        Command command = CommandType.getCommand(commandStr);//valid
        String page = null;
        page=command.execute(request,response);
        request.getRequestDispatcher(page).forward(request,response);
    }

    public void destroy() {
    }
}
