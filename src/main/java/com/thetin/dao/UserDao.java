package com.thetin.dao;

import com.thetin.connection.JDBCUtils;
import com.thetin.model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDao {
    static final String LOGIN = "SELECT * FROM users " +
            "WHERE username = ? AND password = ?";
    static final String INSERT = "INSERT INTO users(name,username,password) VALUES(?,?,?)";
    public boolean validate(String username,String pass){
        boolean success = false;
        try{
            Connection cnt = JDBCUtils.getConnection();
            PreparedStatement psmt = cnt.prepareStatement(LOGIN);
            psmt.setString(1,username);
            psmt.setString(2,pass);
            System.out.println(psmt);
            ResultSet rs = psmt.executeQuery();
            if(rs.next())
                success = true;
        }catch (Exception e){
            e.printStackTrace();
        }
        return success;
    }
    public boolean insertNewUser(User us){
        boolean success = false;
        try{
            Connection cnt = JDBCUtils.getConnection();
            PreparedStatement psmt = cnt.prepareStatement(INSERT);
            psmt.setString(1,us.getName());
            psmt.setString(2,us.getUsername());
            psmt.setString(3,us.getPassword());
            System.out.println(psmt);
            success = psmt.executeUpdate()>0;
        }catch (Exception e){
            e.printStackTrace();
        }
        return success;
    }
}
