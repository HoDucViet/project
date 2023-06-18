<%-- 
    Document   : tron
    Created on : Jun 18, 2023, 5:54:55 PM
    Author     : Ho Duc Viet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!<!-- đây là cách làm frontend=jsp,file TinhServlet.java -->
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Bai 1</h1>
        <form action="tinh" method="post">
            enter radius:<input type="text" name="r"/><br/>
            <input type="submit" value="SUBMIT"/>
        </form>
        <%
            if(request.getAttribute("dientich")!=null){
            String s=(String)request.getAttribute("dientich");
        %>
        <h2>Dien tich:<%= s%></h2>
        <%
            }
        %>
    </body>
</html>
