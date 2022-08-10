package com.thetin.dao;

import com.thetin.connection.JDBCUtils;
import com.thetin.model.Report;

import java.sql.Connection;
import java.sql.PreparedStatement;


public class ReportDao {
    static final String INSERT = "INSERT INTO report(name,email,message) VALUES(?,?,?);";
    static final String DELETE = "DELETE FROM report WHERE id = ?;";
    public boolean insertReport(Report rp){
        boolean success = false;
        try{
            Connection cnt = JDBCUtils.getConnection();
            PreparedStatement psmt = cnt.prepareStatement(INSERT);
            psmt.setString(1,rp.getName());
            psmt.setString(2,rp.getEmail());
            psmt.setString(3,rp.getMessage());
            System.out.println(psmt);
            success = psmt.executeUpdate()>0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return success;
    }
    public boolean deleteReport(int id){
        boolean success = false;
        try{
            Connection cnt = JDBCUtils.getConnection();
            PreparedStatement psmt = cnt.prepareStatement(DELETE);
            psmt.setInt(1,id);
            System.out.println(psmt);
            success = psmt.executeUpdate()>0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return success;
    }
}
