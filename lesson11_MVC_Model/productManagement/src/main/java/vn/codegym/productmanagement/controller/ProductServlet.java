package vn.codegym.productmanagement.controller;

import vn.codegym.productmanagement.model.Product;
import vn.codegym.productmanagement.service.ProductService;

import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductSevlet", urlPatterns = "/sanpham")
public class ProductServlet extends HttpServlet {
    private final ProductService productService = new ProductService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) {
        try {
            String action = req.getParameter("action");
            if (action == null) {
                action = "list";
            }
            RequestDispatcher dispatcher;
            switch (action) {
                case "create":
                    dispatcher = req.getRequestDispatcher("sanpham/create.jsp");
                    break;
                case "detail":
                    int id = Integer.parseInt(req.getParameter("id"));
                    Product product = this.productService.findById(id);
                    req.setAttribute("prd", product);
                    dispatcher = req.getRequestDispatcher("sanpham/detail.jsp");
                    break;
                case "update":
                    int idUpdate = Integer.parseInt(req.getParameter("id"));
                    Product productUpdate = this.productService.findById(idUpdate);
                    req.setAttribute("prd", productUpdate);
                    dispatcher = req.getRequestDispatcher("sanpham/update.jsp");
                    break;
                case "delete":
                    int idDelete = Integer.parseInt(req.getParameter("id"));
                    Product productDelete = this.productService.findById(idDelete);
                    req.setAttribute("prd", productDelete);
                    dispatcher = req.getRequestDispatcher("sanpham/delete.jsp");
                    break;
                default:
                    List<Product> products = productService.findAll();
                    req.setAttribute("products", products);
                    dispatcher = req.getRequestDispatcher("sanpham/list.jsp");
                    break;
            }
            dispatcher.forward(req, resp);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html; charset=UTF-8");
        String action = req.getParameter("action");
        if (action == null) {
            action = "list";
        }
        switch (action) {
            case "create":
                createProduct(req, resp);
                break;
            case "update":
                updateProduct(req, resp);
                break;
            case "delete":
                deleteProduct(req, resp);
                break;
        }
    }

    private void createProduct(HttpServletRequest req, HttpServletResponse resp) {
        Product product = getProductFromRequest(req);
        productService.addProduct(product);
        try {
            resp.sendRedirect("/sanpham?action=list"); //quay lại trang list
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private Product getProductFromRequest(HttpServletRequest req) {
        int id = Integer.parseInt(req.getParameter("id"));
        String name = req.getParameter("name");
        double price = Double.parseDouble(req.getParameter("price"));
        String description = req.getParameter("description");
        String manufacturer = req.getParameter("manufacturer");
        return new Product(id, name, price, description, manufacturer);
    }

    private void updateProduct(HttpServletRequest req, HttpServletResponse resp) {
        Product product = getProductFromRequest(req);
        productService.updateProduct(product);
        try {
            resp.sendRedirect("/sanpham?action=list");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void deleteProduct(HttpServletRequest req, HttpServletResponse resp) {
        int id = Integer.parseInt(req.getParameter("id"));
        productService.deleteProduct(id);
        try {
            resp.sendRedirect("/sanpham?action=list");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

}
