<%-- 
    Document   : login
    Created on : Jun 18, 2023, 8:58:05 PM
    Author     : Ho Duc Viet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
        <h1>Login form</h1>
        <%--
         if(request.getAttribute("error")!=null){
         String er=(String)request.getAttribute("error");
         %>
         <h3 style="color:red"><%= er%></h3>
         <%
            }
        --%>
<!-- trên đây và dưới đây là cách làm của Servlet 
<form action="login" method="post">
            Enter username:<input type="text" name="user"/><br/>
            Enter password:<input type="password" name="pass"/><br/>
            <input type="submit" value="LOGIN"/>
        </form>-->
<!<!-- đây là cách làm hoàn toàn = JSP -->   
    <%
        String u_init=getServletContext().getInitParameter("user");
        String p_init=getServletContext().getInitParameter("pass");
     if(request.getParameter("user")!=null && request.getParameter("pass")!=null){
        String u=request.getParameter("user");
        String p=request.getParameter("pass");
        if(u.equalsIgnoreCase(u_init)&& p.equals(p_init)){
        //nhập đúng
      %>
      <jsp:forward page="welcome.jsp">
          <jsp:param name="name" value="<%= u %>"/>
 
      </jsp:forward>
      <%
        }else{
            //người dùng nhập sai
            String er="Ban da nhap sai,vui long nhap lai";
       %>
       <h3 style="color:red"><%= er%></h3>   
    <%
        }
        }
    %>
    <form>
            Enter username:<input type="text" name="user"/><br/>
            Enter password:<input type="password" name="pass"/><br/>
            <input type="submit" value="LOGIN"/>
    </form>
    

