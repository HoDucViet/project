<%-- 
    Document   : welcome
    Created on : Jun 18, 2023, 9:14:02 PM
    Author     : Ho Duc Viet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!<!-- Đây là cách làm nếu dùng servlet -->
        <%--
          if(request.getAttribute("name")!=null){
          String name=(String)request.getAttribute("name");
         %>
         <h1>Hello <%= name%></h1>
         <%
            }
        --%>
        <!<!-- Đây là cách làm nếu dùng hoàn toàn jsp -->
        <%
          if(request.getParameter("name")!=null){
          String name=request.getParameter("name");
         %>
         <h1>Hello <%= name%></h1>
         <%
            }
        %>
    </body>
</html>
