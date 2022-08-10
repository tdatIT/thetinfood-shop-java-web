package com.thetin.model;

public class OrderProduct {
    private int id_order;
    private int id_product;

    public OrderProduct(int id_order, int id_product) {
        this.id_order = id_order;
        this.id_product = id_product;
    }

    public int getId_order()     {
        return id_order;
    }

    public void setId_order(int id_order) {
        this.id_order = id_order;
    }

    public int getId_product() {
        return id_product;
    }

    public void setId_product(int id_product) {
        this.id_product = id_product;
    }
}
