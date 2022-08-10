package com.thetin.controller;

import com.thetin.dao.ProductDao;
import com.thetin.model.Product;
import com.thetin.variable.Page;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/chi-tiet-san-pham"})
public class ProductDetails extends HttpServlet {
    private ProductDao dao;

    @Override
    public void init() throws ServletException {
        dao = new ProductDao();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        try {
            int id = Integer.parseInt((String)req.getParameter("id"));
            Product  p = dao.getProductById(id);
            if(p != null){
                req.setAttribute("name",p.getName());
                req.setAttribute("price",p.getPrice());
                req.setAttribute("image",p.getImage());
                req.setAttribute("description",p.getDescription());
                req.setAttribute("id",p.getId());
                req.setAttribute("type",p.getType());
                req.getRequestDispatcher(Page.PRODUCT_INFO).forward(req,resp);
            }else
                req.getRequestDispatcher(Page.ERROR_404).forward(req,resp);
        }catch (Exception e){
            e.printStackTrace();
            req.getRequestDispatcher(Page.ERROR_404).forward(req,resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
