package com.thetin.controller;

import com.thetin.dao.ProductDao;
import com.thetin.model.CartItem;
import com.thetin.model.Item;
import com.thetin.model.Product;
import com.thetin.variable.Page;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(urlPatterns = {"/add-cart"})
public class ProcessCart extends HttpServlet {
    ProductDao dao;

    @Override
    public void init() throws ServletException {
        dao = new ProductDao();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        try {
            CartItem user_cart = new CartItem();
            HttpSession session = req.getSession();
            //check true id product in db
            if (req.getParameter("id") != null) {
                //set arraylist for cart
                if(session.getAttribute("session_cart")!=null){
                    user_cart.setItems((ArrayList<Item>)session
                            .getAttribute("session_cart"));
                }
                //get product from db in to p variable
                int id = Integer.parseInt(req.getParameter("id"));
                int quantity = 1;
                Product p = dao.getProductById(id);
                //get quantity and new distance of Item class final add item into list
                if(p != null){
                    if(req.getParameter("quantity")!=null){
                        quantity = Integer.parseInt(req.getParameter("quantity"));
                    }
                    Item i = new Item(p,quantity);
                    user_cart.addItem(i);
                    session.setAttribute("session_cart",user_cart.getItems());
                    session.setAttribute("noItems",user_cart.getQuantityCart());
                }
                resp.sendRedirect(req.getContextPath()+"/gio-hang");
            }
        } catch (Exception e) {
            e.printStackTrace();
            req.getRequestDispatcher(Page.ERROR_404).forward(req, resp);
        }
    }
}
