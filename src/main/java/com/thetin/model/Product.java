package com.thetin.model;

public class Product {
    private int id;
    private String name;
    private double price;
    private String image;
    private String description;
    private int type;

    public Product(String name, double price, String image, String description, int type) {
        this.name = name;
        this.price = price;
        this.image = image;
        this.description = description;
        this.type = type;
    }

    public Product() {
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
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

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
