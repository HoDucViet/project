/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.poly.servlet;

import com.poly.dao.UserDao;
import com.poly.models.User;
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
public class UserController extends HttpServlet {

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
                    deleteUser(request,response);
                   break;
                case "UPDATE":
                   int id = Integer.parseInt(request.getParameter("userid"));
                    response.sendRedirect("admin/update-user.jsp?_type="+type+"&id="+id);
                   break;
                case "INSERT":
                   insertUser(request,response);
                   break;
                case "EXE_UPDATE":
                    updateUser(request, response);
                   break;
            }
        }catch(Exception e){
            System.out.println("loi "+e.toString());
        }
        }
    void deleteUser(HttpServletRequest request, HttpServletResponse response){
        try {
            int id = Integer.parseInt(request.getParameter("userid"));
        UserDao userdao = new UserDao();
        boolean result = userdao.deleteUser(id);
        response.sendRedirect("admin/show-user.jsp");
        } catch (Exception e) {
            System.out.println("loi "+e.toString());
        }
    }
    void insertUser(HttpServletRequest request, HttpServletResponse response){
        try {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String fullname = request.getParameter("fullname");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        int role = Integer.parseInt(request.getParameter("role"));
        User user = new User(username, password, fullname, email, phone, role);
        UserDao userdao = new UserDao();
        boolean result = userdao.insertUser(user);
        response.sendRedirect("admin/show-user.jsp");
        } catch (Exception e) {
            System.out.println("loi "+e.toString());
        }
    }
    void updateUser(HttpServletRequest request, HttpServletResponse response){
        try {
            int id = Integer.parseInt(request.getParameter("id"));
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            String fullname = request.getParameter("fullname");
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            int role = Integer.parseInt(request.getParameter("role"));
            UserDao userdao = new UserDao();
            User user = new User(id, username, password, fullname, email, phone, role);
            boolean result = userdao.updateUser(user);
            response.sendRedirect("admin/show-user.jsp");
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
