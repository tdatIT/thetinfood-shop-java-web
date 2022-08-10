package com.thetin.model;

import java.util.ArrayList;
import java.util.List;

public class CartItem {
    private List<Item> items;

    public CartItem() {
        items = new ArrayList<Item>();
    }

    public double getPrice() {
        double total = 0;
        for (Item item : items) {
            total += (item.getQuantity() * item.getProduct().getPrice());
        }
        return total;
    }

    public Item getItemById(int id) {
        for (Item item : items) {
            if (item.getProduct().getId() == id) {
                return item;
            }
        }
        return null;
    }

    public void addItem(Item i) {
        if (getItemById(i.getProduct().getId()) == null) {
            items.add(i);
        } else {
            for (Item item : items) {
                if (item.getProduct().getId() == i.getProduct().getId()) {
                    item.setQuantity(item.getQuantity() + i.getQuantity());
                }
            }
        }
    }

    public void removeItemById(int id) {
        Item i = getItemById(id);
        if (i != null) {
            items.remove(i);
        }
    }
    public void updateQuantity(int id,int quantity){
        for (Item item : items) {
            if (item.getProduct().getId() == id) {
                item.setQuantity(quantity);
                break;
            }
        }
    }
    public int getQuantityCart() {
        return items.size();
    }

    public List<Item> getItems() {
        return items;
    }

    public void setItems(List<Item> items) {
        this.items = items;
    }

}
