package com.thetin.controller;

import com.thetin.model.CartItem;
import com.thetin.model.Item;
import com.thetin.variable.Page;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(urlPatterns = {"/gio-hang"})
public class Cart extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        CartItem cartItem = new CartItem();
        HttpSession session = req.getSession();
        if(session.getAttribute("session_cart")!=null){
            cartItem.setItems((ArrayList<Item>)session.getAttribute("session_cart"));
        }
        session.setAttribute("noItems",cartItem.getQuantityCart());
        req.setAttribute("item_list",cartItem.getItems());
        req.setAttribute("total_price",cartItem.getPrice());
        try {
            req.getRequestDispatcher(Page.CART_PAGE).forward(req,resp);
        }catch(Exception e){
            e.printStackTrace();
            req.getRequestDispatcher(Page.ERROR_404).forward(req,resp);
        }
    }
}
