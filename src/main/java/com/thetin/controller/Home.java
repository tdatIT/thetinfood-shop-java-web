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
import java.util.List;

@WebServlet(urlPatterns = {"/trang-chu"})
public class Home extends HttpServlet {
    private ProductDao dao;
    private List<Product>type1;
    private List<Product>type2;
    private List<Product>type3;
    @Override
    public void init() throws ServletException {
        dao = new ProductDao();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        try{
            type1 = dao.get4ProductByType(1);
            type2 = dao.get4ProductByType(2);
            type3 = dao.get4ProductByType(3);
            req.setAttribute("type1",type1);
            req.setAttribute("type2",type2);
            req.setAttribute("type3",type3);
            req.getRequestDispatcher(Page.HOME_PAGE).forward(req,resp);
        }catch (Exception e){
            e.printStackTrace();
            req.getRequestDispatcher(Page.HOME_PAGE).forward(req,resp);
        }
    }
}
