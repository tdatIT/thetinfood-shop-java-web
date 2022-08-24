package com.thetin.controller;

import com.thetin.dao.ReportDao;
import com.thetin.mail.SendMail;
import com.thetin.model.Report;
import com.thetin.variable.Page;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/report"})
public class ReportServlet extends HttpServlet {
    private ReportDao dao;

    @Override
    public void init() throws ServletException {
        dao = new ReportDao();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        try {
            String name = (String)req.getParameter("name");
            String email = (String)req.getParameter("email");
            String message = (String)req.getParameter("message");
            Report rp = new Report(name,email,message);
            if(dao.insertReport(rp)){
                SendMail.sendMailToEmail(email,name);
                req.getRequestDispatcher(Page.SUBMIT_PAGE).forward(req,resp);
            }
            else{
                req.getRequestDispatcher(Page.CONTACT_PAGE).forward(req,resp);
            }
        } catch (Exception e) {
            e.printStackTrace();
            req.getRequestDispatcher(Page.ERROR_404).forward(req,resp);
        }
    }
}
