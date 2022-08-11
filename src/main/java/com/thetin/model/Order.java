package com.thetin.model;

import java.sql.Date;

public class Order {
    private int id;
    private String c_phone;
    private double total_amount;
    private Date create_day;
    private String address;
    private boolean status;

    public Order(String c_phone, double total_amount, Date create_day, String address,boolean status) {
        this.c_phone = c_phone;
        this.total_amount = total_amount;
        this.create_day = create_day;
        this.address = address;
        this.status=status;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getC_phone() {
        return c_phone;
    }

    public void setC_phone(String c_phone) {
        this.c_phone = c_phone;
    }

    public double getTotal_amount() {
        return total_amount;
    }

    public void setTotal_amount(double total_amount) {
        this.total_amount = total_amount;
    }

    public Date getCreate_day() {
        return create_day;
    }

    public void setCreate_day(Date create_day) {
        this.create_day = create_day;
    }
}
