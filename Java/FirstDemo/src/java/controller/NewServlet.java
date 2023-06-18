/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author Ho Duc Viet
 */
@WebServlet(name = "NewServlet", urlPatterns = {"/new"})
public class NewServlet extends HttpServlet {

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
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet NewServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet NewServlet at " + request.getContextPath() + "</h1>");
            String name ="Hồ Đức Việt";
            out.println("<h1 style='color:blue'> Xin chào "+name+"!</h1>");
            Date d = new Date();
            SimpleDateFormat f = new SimpleDateFormat("hh:mm:ss");
            out.println("<h1 style='color:red'> Time "+f.format(d)+"!</h1>");
            out.println("</body>");
            out.println("</html>");
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
        //processRequest(request, response);
        //response.sendRedirect("https://dantri.com.vn/"); Điều qua 1 trang khác
         // response.sendRedirect("index.html");Hay nói cách khác là chuyển qua 1 địa chỉ mới
         //request.getRequestDispatcher("index.html").forward(request, response);
        //request.getRequestDispatcher nó chỉ tham chiếu qua index.html,chứ nó k chuyển
        //...address trang qua đó(tức là vẫn dùng địa chỉ của file hiện tại).
        String num=request.getParameter("number"); //từ đây về dưới là nhận dữ liệu
        String name=request.getParameter("name");
        //trực tiếp là 10 khi truy cập trang http://localhost:9999/first/new?number=10
        //với cú pháp là ?number=10 (number là tên biến được khai ở getParameter trên)
        PrintWriter out= response.getWriter();
        int n;
        try{
            n=Integer.parseInt(num);
            if(n%2==0)
                out.print("So chan");
            else out.print("So le");
        }catch(NumberFormatException e){
        System.out.print("Number:"+num);
        }
        out.println("Hello "+name+"!");
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
