package com.thetin.controller;

import com.thetin.dao.ContactDao;
import com.thetin.model.Contact;
import com.thetin.variable.Page;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/lien-he"})
public class ContactServlet extends HttpServlet {
    private ContactDao dao;
    @Override
    public void init() throws ServletException {
        dao = new ContactDao();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        try {
            req.getRequestDispatcher(Page.CONTACT_PAGE).forward(req,resp);
        }catch (Exception e){
            e.printStackTrace();
            req.getRequestDispatcher(Page.ERROR_404).forward(req,resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        try {
            String name = (String)req.getParameter("name");
            String c_phone = (String)req.getParameter("c_phone");
            com.thetin.model.Contact ct = new com.thetin.model.Contact();
            ct.setName(name);
            ct.setC_phone(c_phone);
            if(dao.insertContact(ct)){
                req.getRequestDispatcher(Page.SUBMIT_PAGE).forward(req,resp);
            }
            else{

                req.getRequestDispatcher(Page.CONTACT_PAGE).forward(req,resp);
            }
        }catch (Exception e){
            e.printStackTrace();
            req.getRequestDispatcher(Page.ERROR_404).forward(req,resp);
        }
    }
}
