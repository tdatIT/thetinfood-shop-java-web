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

@WebServlet(urlPatterns = {"/danh-sach-san-pham"})
public class ProductList extends HttpServlet {
    static final int COUNT_PRODUCT = 6;
    private ProductDao dao;
    private List<Product> products;

    @Override
    public void init() throws ServletException {
        dao = new ProductDao();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        try {
            //get parameter
            int page=1;
            int type = Integer.parseInt((String) req.getParameter("type"));
            if(req.getParameter("page")!=null){
                page = Integer.parseInt((String)req.getParameter("page"));
            }
            //process data on page and pagination
            products = dao.getPageProducts(type,(page-1)*COUNT_PRODUCT,COUNT_PRODUCT);
            int total_records = dao.getCountProduct(type);
            int noPage = (int)Math.ceil(total_records*1.0/COUNT_PRODUCT);
            switch (type) {
                case 1:
                    req.setAttribute("type", "Thực phẩm đông lạnh");
                    break;
                case 2:
                    req.setAttribute("type", "Thực phẩm tươi sống");
                    break;
                case 3:
                    req.setAttribute("type", "Thực phẩm khác...");
                    break;
            }
            req.setAttribute("noPage", noPage);
            req.setAttribute("products", products);
            req.getRequestDispatcher(Page.PRODUCT_PAGE).forward(req, resp);
        } catch (Exception e) {
            e.printStackTrace();
            req.getRequestDispatcher(Page.ERROR_404).forward(req, resp);
        }
    }
}
