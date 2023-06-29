/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.poly.servlet;

import com.poly.dao.ProductDao;
import com.poly.models.Product;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author PC
 */
public class ProductController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String type = request.getParameter("_type");
            switch(type){
                case "DELETE":
                    deleteProduct(request,response);
                   break;
                case "UPDATE":
                   int id = Integer.parseInt(request.getParameter("productid"));
                   response.sendRedirect("admin/update-product.jsp?_type="+type+"&id="+id);
                   break;
                case "INSERT":
                   insertProduct(request,response);
                   break;
                case "EXE_UPDATE":
                    updateProduct(request, response);
                   break;
            }
        }catch(Exception e){
            System.out.println("loi "+e.toString());
        }
        }
    void insertProduct(HttpServletRequest request, HttpServletResponse response){
        try {
            
        String name = request.getParameter("name");
        int price =Integer.parseInt(request.getParameter("price"));
        String note = request.getParameter("note");
        String image = request.getParameter("image");
        int category_id =Integer.parseInt(request.getParameter("category_id"));
        Product product = new Product(name, price, note, image, category_id);
        ProductDao productdao = new ProductDao();
        boolean result = productdao.insertProduct(product);
        response.sendRedirect("admin/show-product.jsp");
        } catch (Exception e) {
            System.out.println("loi "+e.toString());
        }
    } 
    void deleteProduct(HttpServletRequest request, HttpServletResponse response){
        try {
            int id = Integer.parseInt(request.getParameter("productid"));
        ProductDao ProductDao = new ProductDao();
        boolean result = ProductDao.deleteProduct(id);
        response.sendRedirect("admin/show-product.jsp");
        } catch (Exception e) {
            System.out.println("loi "+e.toString());
        }
    }
    void updateProduct(HttpServletRequest request, HttpServletResponse response){
        try {
            int id = Integer.parseInt(request.getParameter("id"));
            String name = request.getParameter("name");
            int price = Integer.parseInt(request.getParameter("price"));
            String note = request.getParameter("note");
            String image = request.getParameter("image");
            int category_id = Integer.parseInt(request.getParameter("category_id"));
            ProductDao dao = new ProductDao();
            Product product = new Product(id, name, price, note, image, category_id);
            boolean result = dao.updateProduct(product);
            response.sendRedirect("admin/show-product.jsp");
        } catch (Exception e) {
            System.out.println("loi "+e.toString());
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
