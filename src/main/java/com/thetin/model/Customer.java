package com.thetin.model;

public class Customer {
    private String c_phone;
    private String name;

    public Customer(String c_phone, String name) {
        this.c_phone = c_phone;
        this.name = name;
    }

    public String getC_phone() {
        return c_phone;
    }

    public void setC_phone(String c_phone) {
        this.c_phone = c_phone;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
