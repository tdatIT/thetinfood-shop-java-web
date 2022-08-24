package com.thetin.controller;

import com.thetin.dao.OrderDao;
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
import java.sql.Date;
import java.util.ArrayList;

@WebServlet(urlPatterns = {"/checkout"})
public class Checkout extends HttpServlet {
    private OrderDao dao;

    @Override
    public void init() throws ServletException {
        dao = new OrderDao();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        //Create variable for get values
        String c_phone = String.valueOf(req.getParameter("c_phone"));
        String name = String.valueOf(req.getParameter("name"));
        String address = String.valueOf(req.getParameter("address"));
        HttpSession session = req.getSession();
        CartItem session_cart = new CartItem();
        session_cart.setItems((ArrayList<Item>) session
                .getAttribute("session_cart"));
        if (c_phone == null || name == null || address == null || session_cart.getQuantityCart() == 0) {
            resp.sendRedirect(req.getContextPath() + "/gio-hang");
        } else {
            double total = session_cart.getPrice();
            java.util.Date current = new java.util.Date();
            Date create_day = new Date(current.getTime());
            dao.checkoutOrder(c_phone,name, total, create_day,
                    address, false, (ArrayList<Item>) session_cart.getItems());
            req.getRequestDispatcher(Page.SUCCESS_PAGE).forward(req, resp);
            session.setAttribute("session_cart",null);
        }

    }
}
