package com.example.epamfinalprojectbuber.dao.impl;

import com.example.epamfinalprojectbuber.dao.UserDao;
import com.example.epamfinalprojectbuber.entity.User;
import com.example.epamfinalprojectbuber.pool.ConnectionBuilder;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDaoImpl implements UserDao {
    private final double BEGAN_RATING=0.0;

    private static UserDaoImpl instance = new UserDaoImpl();

    private UserDaoImpl() {
    }

    public static UserDaoImpl getInstance() {
        return instance;
    }

    @Override
    public User authenticate(String login, String password){
        int id=0;
        String name=null,status=null,photo=null,sex=null,email=null,rating=null;
        try{
            ConnectionBuilder connectionBuilder=ConnectionBuilder.getInstance();
            Connection connection=connectionBuilder.getFreeConnection();

            PreparedStatement preparedStatement=connection.prepareStatement("SELECT * FROM user WHERE login=? and password=?");
            preparedStatement.setString(1,login);
            preparedStatement.setString(2,password);
            ResultSet resultSet=preparedStatement.executeQuery();
            while(resultSet.next()){
                id=resultSet.getInt("iduser");
                name=resultSet.getString("name");
                status=resultSet.getString("status");
                photo=resultSet.getString("photo");
                sex=resultSet.getString("sex");
                email=resultSet.getString("email");
                rating=resultSet.getString("rating");
            }
            connectionBuilder.releaseConnection(connection);
        }catch (SQLException exception){
            System.out.println("SQl EXCEPTION");
        }
        return new User(id,sex,status,name,login,password,email,rating);
    }

    @Override
    public boolean registration(User user) {
        try {
            ConnectionBuilder connectionBuilder = ConnectionBuilder.getInstance();
            Connection connection = connectionBuilder.getFreeConnection();

            PreparedStatement preparedStatement=connection.prepareStatement("SELECT * FROM user WHERE login=? or email=?");
            preparedStatement.setString(1, user.getLogin());
            preparedStatement.setString(2, user.getEmail());
            ResultSet resultSet= preparedStatement.executeQuery();
            if(!resultSet.next()){
                PreparedStatement statement= connection.prepareStatement("INSERT INTO user(name,login,password,status,photo,sex,rating,email) VALUES (?,?,?,?,?,?,?,?)");
                statement.setString(1, user.getName());
                statement.setString(2, user.getLogin());
                statement.setString(3, user.getPassword());
                statement.setString(4, user.getStatus());
                statement.setString(5, "dont have photo");//fix
                statement.setString(6, user.getSex());
                statement.setDouble(7,BEGAN_RATING);
                statement.setString(8, user.getEmail());
                statement.executeUpdate();
                connectionBuilder.releaseConnection(connection);
            }else{
                return false;
            }
        } catch (SQLException exception) {
            System.out.println("sqlexception");
        }
        return true;
    }
}
