<%-- 
    Document   : logout
    Created on : Oct 24, 2019, 2:18:05 AM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
            session.setAttribute("userlogined", null);
            response.sendRedirect(request.getContextPath()+"/login.jsp");
        %>
    </body>
</html>
