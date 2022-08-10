package com.thetin.dao;

import com.thetin.connection.JDBCUtils;
import com.thetin.model.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProductDao {
    //SELECT
    static final String SELECT_TYPE = "SELECT * FROM products WHERE type = ?";
    static final String SELECT_TYPE_v2 = "SELECT * FROM products WHERE type = ? LIMIT 4";
    static final String SELECT_ALL = "SELECT * FROM products;";
    static final String SELECT_ID = "SELECT * FROM products WHERE id = ?;";
    //INSERT - DELETE - UPDATE
    static final String INSERT = "INSERT INTO products(name,price,image,description,type) VALUES" +
            "(?,?,?,?,?);";
    static final String DELETE = "DELETE FROM products WHERE id = ?";
    static final String UPDATE = "UPDATE FROM products SET name = ?,price=?,image=?,description = ?,type =?" +
            "WHERE id = ?;";
    //Paging
    static final String GET_COUNT_PRODUCT="SELECT COUNT(*) FROM products WHERE type=?";
    static final String GET_PRODUCT_PAGE= "SELECT * FROM products WHERE type = ? LIMIT ?,?";

    public List<Product> getAllProducts() {
        List<Product> lst = new ArrayList<Product>();
        try {
            Connection cnt = JDBCUtils.getConnection();
            PreparedStatement psmt = cnt.prepareStatement(SELECT_ALL);
            System.out.println(psmt);
            ResultSet rs = psmt.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setId(rs.getInt("id"));
                p.setName(rs.getString(("name")));
                p.setImage(rs.getString("image"));
                p.setPrice(rs.getDouble("price"));
                p.setDescription(rs.getString("description"));
                p.setType(rs.getInt("type"));
                lst.add(p);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return lst;
    }

    public Product getProductById(int id) {
        Product p = new Product();
        try {
            Connection cnt = JDBCUtils.getConnection();
            PreparedStatement psmt = cnt.prepareStatement(SELECT_ID);
            psmt.setInt(1, id);
            System.out.println(psmt);
            ResultSet rs = psmt.executeQuery();
            while (rs.next()) {
                p.setId(rs.getInt("id"));
                p.setName(rs.getString(("name")));
                p.setImage(rs.getString("image"));
                p.setPrice(rs.getDouble("price"));
                p.setDescription(rs.getString("description"));
                p.setType(rs.getInt("type"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return p;
    }

    public List<Product> getListProductByType(int type) {
        List<Product> lst = new ArrayList<Product>();
        try {
            Connection cnt = JDBCUtils.getConnection();
            PreparedStatement psmt = cnt.prepareStatement(SELECT_TYPE);
            psmt.setInt(1, type);
            System.out.println(psmt);
            ResultSet rs = psmt.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setId(rs.getInt("id"));
                p.setName(rs.getString(("name")));
                p.setImage(rs.getString("image"));
                p.setPrice(rs.getDouble("price"));
                p.setDescription(rs.getString("description"));
                p.setType(rs.getInt("type"));
                lst.add(p);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return lst;
    }

    public List<Product> get4ProductByType(int type) {
        List<Product> lst = new ArrayList<Product>();
        try {
            Connection cnt = JDBCUtils.getConnection();
            PreparedStatement psmt = cnt.prepareStatement(SELECT_TYPE_v2);
            psmt.setInt(1, type);
            System.out.println(psmt);
            ResultSet rs = psmt.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setId(rs.getInt("id"));
                p.setName(rs.getString(("name")));
                p.setImage(rs.getString("image"));
                p.setPrice(rs.getDouble("price"));
                p.setDescription(rs.getString("description"));
                p.setType(rs.getInt("type"));
                lst.add(p);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return lst;
    }

    public boolean insertNewProduct(Product p) {
        boolean success = false;
        try {
            Connection cnt = JDBCUtils.getConnection();
            PreparedStatement psmt = cnt.prepareStatement(INSERT);
            psmt.setString(1, p.getName());
            psmt.setDouble(2, p.getPrice());
            psmt.setString(3, p.getImage());
            psmt.setString(4, p.getDescription());
            psmt.setInt(5, p.getType());
            System.out.println(psmt);
            success = psmt.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean deleteProduct(int id) {
        boolean success = false;
        try {
            Connection cnt = JDBCUtils.getConnection();
            PreparedStatement psmt = cnt.prepareStatement(DELETE);
            psmt.setInt(1, id);
            System.out.println(psmt);
            success = psmt.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return success;
    }

    public boolean updateProduct(Product p) {
        boolean success = false;
        try {
            Connection cnt = JDBCUtils.getConnection();
            PreparedStatement psmt = cnt.prepareStatement(UPDATE);
            psmt.setString(1, p.getName());
            psmt.setDouble(2, p.getPrice());
            psmt.setString(3, p.getImage());
            psmt.setString(4, p.getDescription());
            psmt.setInt(5, p.getId());
            psmt.setInt(6, p.getType());
            System.out.println(psmt);
            success = psmt.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return success;
    }

    public int getCountProduct(int type){
        int count = 0;
        try{
            Connection cnt = JDBCUtils.getConnection();
            PreparedStatement psmt = cnt.prepareStatement(GET_COUNT_PRODUCT);
            psmt.setInt(1,type);
            System.out.println(psmt);
            ResultSet rs = psmt.executeQuery();
            while (rs.next()){
                count = rs.getInt(1);
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return count;
    }

    public List<Product> getPageProducts(int type,int start,int noRecords){
        List<Product> lst = new ArrayList<Product>();
        try{
            Connection cnt = JDBCUtils.getConnection();
            PreparedStatement psmt = cnt.prepareStatement(GET_PRODUCT_PAGE);
            psmt.setInt(1,type);
            psmt.setInt(2,start);
            psmt.setInt(3,noRecords);
            System.out.println(psmt);

            ResultSet rs = psmt.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setId(rs.getInt("id"));
                p.setName(rs.getString(("name")));
                p.setImage(rs.getString("image"));
                p.setPrice(rs.getDouble("price"));
                p.setDescription(rs.getString("description"));
                p.setType(rs.getInt("type"));
                lst.add(p);
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return lst;
    }
}
