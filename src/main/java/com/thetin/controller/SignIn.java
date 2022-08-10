package com.thetin.controller;

import com.thetin.dao.UserDao;
import com.thetin.variable.Page;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(urlPatterns = {"/dang-nhap"})
public class SignIn extends HttpServlet {
    private UserDao dao;

    @Override
    public void init() throws ServletException {
        dao = new UserDao();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            HttpSession session = req.getSession(false);
            String user_session = (String) session.getAttribute("user_session");
            if (user_session == null) {
                req.getRequestDispatcher(Page.SIGNIN_PAGE).forward(req, resp);
            } else
                req.getRequestDispatcher(Page.HOME_PAGE).forward(req, resp);
        } catch (Exception e) {
            e.printStackTrace();
            req.getRequestDispatcher(Page.ERROR_404).forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            HttpSession session = req.getSession();
            String user_session = (String) session.getAttribute("user_session");
            if (user_session == null) {
                String username = (String) req.getParameter("username");
                String pass = (String) req.getParameter("password");
                if (dao.validate(username, pass)) {
                    session.setAttribute("user_session", username);
                    resp.sendRedirect(req.getContextPath()+Page.TRANGCHU);
                } else {
                    req.setAttribute("notify", false);
                    req.getRequestDispatcher(Page.SIGNIN_PAGE).forward(req, resp);
                }
            } else
                resp.sendRedirect(req.getContextPath() + Page.TRANGCHU);

        } catch (Exception e) {
            e.printStackTrace();
            req.getRequestDispatcher(Page.ERROR_404).forward(req, resp);
        }
    }
}
