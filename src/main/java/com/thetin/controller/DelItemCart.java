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

@WebServlet(urlPatterns = {"/del-item"})
public class DelItemCart extends HttpServlet {
    private CartItem user_cart;

    @Override
    public void init() throws ServletException {
        user_cart = new CartItem();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        HttpSession session = req.getSession();
        if(session.getAttribute("session_cart")!=null){
            user_cart.setItems((ArrayList<Item>)session.getAttribute("session_cart"));
        }
        if(req.getParameter("id")!=null){
            int id = Integer.parseInt(req.getParameter("id"));
            user_cart.removeItemById(id);
            session.setAttribute("session_cart",user_cart.getItems());
        }
    }
}
