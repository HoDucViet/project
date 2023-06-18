<%-- 
    Document   : home
    Created on : Jun 18, 2023, 7:42:54 PM
    Author     : Ho Duc Viet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/style.css"/>
    </head>
    <body>
        <div id="menu_tab">
            <%@include file="menu.jsp" %>
        </div>
        <div class="clr"></div>
        <div>
            
        </div> 
        <div class="clr"></div>
        <div class="dut">
            <%@include file="dut.jsp" %>
            </div>
        <div class="footer">
            <%@include file="footer.jsp" %>
        </div>
    </body>
</html>
