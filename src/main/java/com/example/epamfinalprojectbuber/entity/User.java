package com.example.epamfinalprojectbuber.entity;

public class User {
    private String sex,status,name,login,password,email,rating;
    private int id;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getRating() {
        return rating;
    }

    public void setRating(String rating) {
        this.rating = rating;
    }

    //author
    public User(int id, String sex, String status, String name, String login, String password, String email,String rating) {
        this.id = id;
        this.sex = sex;
        this.status = status;
        this.name = name;
        this.login = login;
        this.password = password;
        this.email = email;
        this.rating=rating;
    }

    //reg
    public User(String sex, String status, String name, String login, String password, String email) {
        this.sex = sex;
        this.status = status;
        this.name = name;
        this.login = login;
        this.password = password;
        this.email = email;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
