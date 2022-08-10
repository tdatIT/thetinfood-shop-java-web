package com.thetin.dao;

import com.thetin.connection.JDBCUtils;
import com.thetin.model.Contact;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class ContactDao {
    static final String INSERT =  "INSERT INTO contact(name,c_phone) VALUES(?,?);";
    static final String DELETE =  "DELETE FROM contact WHERE id = ?;";

    public boolean insertContact(Contact ct){
        boolean success = false;
        try{
            Connection cnt = JDBCUtils.getConnection();
            PreparedStatement psmt = cnt.prepareStatement(INSERT);
            psmt.setString(1,ct.getName());
            psmt.setString(2,ct.getC_phone());
            System.out.println(psmt);
            success = psmt.executeUpdate()>0;
        }catch (Exception e){
            e.printStackTrace();
        }
        return success;
    }
    public boolean deleteContact(int id){
        boolean success = false;
        try{
            Connection cnt = JDBCUtils.getConnection();
            PreparedStatement psmt = cnt.prepareStatement(DELETE);
            psmt.setInt(1,id);
            System.out.println(psmt);
            success = psmt.executeUpdate()>0;
        }catch (Exception e){
            e.printStackTrace();
        }
        return success;
    }
}
