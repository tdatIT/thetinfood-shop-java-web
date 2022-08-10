package com.thetin.connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class JDBCUtils {
    static final String URL_DB = "jdbc:mysql://localhost:3306/shop_thetin";
    static final String USER = "admin";
    static final String PASS = "123123123";

    public static Connection getConnection(){
        Connection cnt = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            cnt = DriverManager.getConnection(URL_DB,USER,PASS);
        }
        catch (Exception e){
            e.printStackTrace();
        }
        return cnt;
    }
}
