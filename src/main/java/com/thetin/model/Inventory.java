package com.thetin.model;

public class Inventory {
    private int id_product;
    private int amount;

    public Inventory(int id_product, int amount) {
        this.id_product = id_product;
        this.amount = amount;
    }

    public int getId_product() {
        return id_product;
    }

    public void setId_product(int id_product) {
        this.id_product = id_product;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }
}
