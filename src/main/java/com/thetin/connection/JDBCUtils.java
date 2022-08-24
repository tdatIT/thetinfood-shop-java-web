package com.thetin.connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class JDBCUtils {
    static final String URL_DB = "jdbc:mysql://us-cdbr-east-06.cleardb.net:3306/heroku_929ad19aecdc36d";
    static final String USER = "b712ff8c62e20a";
    static final String PASS = "f59950e2";

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

