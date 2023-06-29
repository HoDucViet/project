<%-- 
    Document   : topmenu
    Created on : Oct 20, 2019, 12:19:41 AM
    Author     : PC
--%>

<%@page import="com.poly.models.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
            body{
    margin: 0;
    padding: 0;
}

            .menu{
    background-color: #eae7de;
}

.menu>li{
    float: left;
    margin-left: 50px;
    margin-right: 50px;
    bottom: 10px;
}
 
.menu>li>a{
    text-transform: uppercase;
    color: black;
    font-weight: bold;
}

.menu li{
    position: relative;
    list-style-type: none;
    padding: 0;

}
.menu li a{
    padding: 10px;
    line-height: 20px;
    display: inline-block;
    text-decoration: none;
    color: black;
}

.menu .sub-menu{
    display: none;
    position: absolute;
    top: 0;
    left: 100%;
    width: 200px;
    background-color: #eae7de;
    padding: 0;

}
 
.menu li:hover>.sub-menu{
    display: block;
}

.menu>li>.sub-menu{
    top: 40px;
    left: 0;
}
.menu li>ul>li:hover{
    background-color: lightblue;
}
.menu>li>a:hover{
    color: red;
}
        </style>
    <body>
        <nav>
            <ul class="menu">
            <%
            User user4=(User)session.getAttribute("userlogined");
            if(user4==null)
            {%>
                <li><a href="/index.jsp">Trang chủ</a></li>
            <%}
            else
            {%>    
                <li><a href="/index.jsp">Trang chủ</a></li>
                <li>
                    <a href="">Quản Lý Tài Khoản</a>
                    <ul class="sub-menu">
                        <li><a href="add-user.jsp">Thêm Tài Khoản</a></li>
                        <li><a href="show-user.jsp">Danh Sách Tài Khoản</a></li>
                    </ul>
                </li>
                <li>
                    <a href="">Quản Lý Sản Phẩm</a>
                    <ul class="sub-menu">
                        <li><a href="add-product.jsp">Thêm Sản Phẩm</a></li>
                        <li><a href="show-product.jsp">Danh Sách Sản Phẩm</a></li>
                    </ul>
                </li>
                <%}%>
                <li><a href="">Tin tức</a></li>
                <li><a href="">Liên hệ</a></li>
            </ul>
        </nav>
    </body>
</html>
