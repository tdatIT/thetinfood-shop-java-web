package com.thetin.dao;

import com.thetin.connection.JDBCUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class CustomerDao {
    static final String CHECK_EXIST = "SELECT * FROM customers " +
            "WHERE c_phone=?";
    static final String INSERT = "INSERT INTO customers VALUES(?,?)";

    public void checkOrInsert(String c_phone, String name) {
        Connection cnt = JDBCUtils.getConnection();
        try {
            PreparedStatement psmt = cnt.prepareStatement(CHECK_EXIST);
            psmt.setString(1, c_phone);
            System.out.println(psmt);
            ResultSet rs = psmt.executeQuery();
            if (!rs.next()) {
                PreparedStatement finalSmt = cnt.prepareStatement(INSERT);
                finalSmt.setString(1, c_phone);
                finalSmt.setString(2, name);
                finalSmt.executeUpdate();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
