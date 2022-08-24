package com.thetin.dao;

import com.thetin.connection.JDBCUtils;
import com.thetin.model.Item;

import java.sql.*;
import java.util.ArrayList;

public class OrderDao {
    static final String INSERT_ORDER = "INSERT INTO orders(c_phone,total_amount,create_day,address,status) " +
            "VALUES(?,?,?,?,?)";
    static final String GET_LAST_ORDER_ID = "SELECT LAST_INSERT_ID() AS last_id";
    static final String INSERT_PRODUCT_INTO_ORDER = "INSERT INTO order_product VALUES(?,?,?)";

    public int newOrder(String c_phone, double total, Date create_day,
                        String address, boolean status) {
        Connection cnt = JDBCUtils.getConnection();
        int order_id = -1;
        try {
            PreparedStatement psmt = cnt.prepareStatement(INSERT_ORDER);
            psmt.setString(1, c_phone);
            psmt.setDouble(2, total);
            psmt.setDate(3, create_day);
            psmt.setString(4, address);
            psmt.setBoolean(5, status);
            System.out.println(psmt);
            psmt.executeUpdate();
            psmt = cnt.prepareStatement(GET_LAST_ORDER_ID);
            ResultSet rs = psmt.executeQuery();
            while (rs.next()) {
                order_id = rs.getInt("last_id");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return order_id;
    }

    public void addProductIntoOrder(int id, ArrayList<Item> items) {
        int order_id = id;
        Connection cnt = JDBCUtils.getConnection();
        try {
            if (order_id != -1) {
                Savepoint savepoint = cnt.setSavepoint("sp_1");
                cnt.setAutoCommit(false);
                for (Item i : items) {
                    PreparedStatement add_cmd = cnt.prepareStatement(INSERT_PRODUCT_INTO_ORDER);
                    add_cmd.setInt(1, order_id);
                    add_cmd.setInt(2, i.getProduct().getId());
                    add_cmd.setInt(3, i.getQuantity());
                    System.out.println(add_cmd);
                    if (add_cmd.executeUpdate() == 0) {
                        cnt.rollback(savepoint);
                        System.out.println("Error !");
                        break;
                    }
                }
                cnt.commit();
                cnt.setAutoCommit(true);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void checkoutOrder(String c_phone, String name, double total, Date create_day,
                              String address, boolean status, ArrayList<Item> items) {
        CustomerDao dao = new CustomerDao();
        dao.checkOrInsert(c_phone, name);
        int id = newOrder(c_phone, total, create_day, address, status);
        addProductIntoOrder(id,items);
    }
}
