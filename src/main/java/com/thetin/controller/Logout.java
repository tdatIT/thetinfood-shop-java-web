package com.thetin.controller;

import com.thetin.variable.Page;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(urlPatterns = {"/dang-xuat"})
public class Logout extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            req.getSession(false).invalidate();
            resp.sendRedirect(req.getContextPath()+Page.TRANGCHU);
        }
        catch (Exception e){
            e.printStackTrace();
            req.getRequestDispatcher(Page.ERROR_404).forward(req,resp);
        }
    }
}
