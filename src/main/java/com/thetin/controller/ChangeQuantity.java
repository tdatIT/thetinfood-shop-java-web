package com.thetin.controller;

import com.thetin.model.CartItem;
import com.thetin.model.Item;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(urlPatterns = {"/change-quantity"})
public class ChangeQuantity extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            CartItem user_cart = new CartItem();
            HttpSession session = req.getSession();
            //check true id product in db
            if (req.getParameter("id") != null
                    || req.getParameter("quantity") != null) {
                //set arraylist for cart
                if (session.getAttribute("session_cart") != null) {
                    user_cart.setItems((ArrayList<Item>) session
                            .getAttribute("session_cart"));
                    //get product from db in to p variable
                    int id = Integer.parseInt(req.getParameter("id"));
                    int quantity = Integer.parseInt(req.getParameter("quantity"));
                    user_cart.updateQuantity(id, quantity);

                    session.setAttribute("session_cart", user_cart.getItems());
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
