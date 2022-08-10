package com.thetin.model;

public class Contact {
    private int id;
    private String name;
    private String c_phone;

    public Contact(String name, String c_phone) {
        this.name = name;
        this.c_phone = c_phone;
    }

    public Contact() {

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getC_phone() {
        return c_phone;
    }

    public void setC_phone(String c_phone) {
        this.c_phone = c_phone;
    }
}
