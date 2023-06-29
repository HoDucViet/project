<%-- 
    Document   : banner
    Created on : Oct 20, 2019, 12:19:18 AM
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
header{
    background-color: lightblue;
    width: 100%;
    min-height: 100px;
    padding: 10px;
}
nav{
    background-color: #eae7de;
    width: 100%;
    min-height: 50px;
    padding: 10px;
}
article{
    width: 100%;
    min-height: 500px;
    padding: 10px;
    height: 2000px;
}
header .logo img{
    width: 150px;
    height: 70px;
    float: left;
    margin-left: 20px;
}
header .timkiem input{
        width: 200px;
        height: 40px;
        box-sizing: border-box;
        outline:none;
        float: left;
        
      
}
header .timkiem button {
    outline: none;
    font-weight: bold;
    background-color: white;
    color: black;
    float: left;
    height: 40px;
    width: 100px;

}
header .timkiem form{
    border: 1px solid black;
    width: 302px;
    float: left;
    margin-left: 100px;
    margin-top: 15px;
}
header .giohang{
    float: left;
    margin-left: 200px;
    margin-top: 10px;
    margin-right: 0px;
    padding: 15px;
    background-color:  black;
    color: white;
    font-weight: bold;
    font-size: 18px;
    text-align: center;
    border-radius: 10px;
    
}
header a{
    font-size: 18px;
    color: white;
    text-decoration: none;
}
header .dangxuat{
    float: left;
    margin-left: 50px;
    margin-top: 10px;
    padding: 15px;
    background-color:  black;
    color: white;
    font-weight: bold;
    font-size: 18px;
    text-align: center;
    border-radius: 10px;
}
header .chaouser{
    float: left;
    margin-left: 50px;
    margin-top: 10px;
    padding: 15px;
    background-color:  black;
    color: white;
    font-weight: bold;
    font-size: 18px;
    width: 100px;

}
header .giohang:hover{
    background-color: #eae7de;
}
header .dangxuat:hover{
    background-color: #eae7de;
}
header .giohang a:hover{
    background-color: #eae7de;
    color: black;
}
header .dangxuat a:hover{
    background-color: #eae7de;
    color: black;
}
.clear {
    clear: both;
}
    </style>
    <body> 
        <header>
            <div class="logo">
                <img src="img/logo.PNG" alt="">
            </div>
            <div class="timkiem">
                <form action="" method="">
                    <input type="text" name="search" placeholder="Nhập từ khóa tìm kiếm">
                    <button type="submit">Tìm kiếm</button> 
                </form>
            </div>
                    <%
            User user3=(User)session.getAttribute("userlogined");
            if(user3!=null)
            {%>
            <div class="giohang"><a href="<%=request.getContextPath()%>/shopping.jsp" >Giỏ hàng</a></div>

            <div class="dangxuat"><a href="<%=request.getContextPath()%>/logout.jsp" target="_blank">Đăng xuất</a></div>
            <div class="chaouser">      
        <%
            User user2=(User)session.getAttribute("userlogined");
            if(user2!=null)
                out.print("Chào: "+user2.getUsername());
            else
                response.sendRedirect(request.getContextPath()+"/login.jsp");
            %>
            </div>
            <%}
            else
            {%>
                <div class="giohang"><a href="<%=request.getContextPath()%>/login.jsp" >Đăng nhập</a></div>
                <div class="dangxuat"><a href="<%=request.getContextPath()%>/register.jsp">Đăng ký</a></div>
            <%}%>

        </header>
                
    </body>
</html>
