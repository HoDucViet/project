<%-- 
    Document   : show-user
    Created on : Oct 20, 2019, 12:11:46 AM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.poly.models.User"%>
<%@page import="com.poly.dao.UserDao"%>
<%@page import="com.poly.dao.ConnectDao"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.poly.dao.ConnectDao"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <div class="container">
            <div class="banner"> <%@include file="/banner.jsp" %>  </div>
            <div class="topmenu"><%@include file="/topmenu.jsp" %>  </div>
            <article>
                <div class="row1">

                <div class="slideshow" >
                    <div class="slideshow-container" >
                        <form>
                            <div id="hopchuaanh">
                                <img src="img/anh1.jpg" style="width:100%; height:300px "  id="anh" /> 
                            </div> 
                            <br />
                        </form>                   
                    </div>
                </div></div>
                <div class="clear" ></div>

            <div class="tranggiohang"> 
                                        <%
            User user7=(User)session.getAttribute("userlogined");
            if(user7==null)
                response.sendRedirect(request.getContextPath()+"/login.jsp");
            %>
                <!-----------------nội dung ----------->
                                        <h1>Danh sách Users!</h1>
        <table border="1">
            <tr style='font-weight: bold; background-color: #eae7de '>
                <th>ID</th>
                <th>Username</th>
                <th>Password</th>
                <th>Full name</th>
                <th>Email</th>
                <th>Phone</th>
                <th>Role</th>
                <td>Delete</td>
                <td>Update</td>
            </tr>
        <%
            UserDao user = new UserDao();
            ArrayList<User> dsuser =  user.fillAll();
            for(int i =0; i<dsuser.size();i++){
        %>
            <tr>
                <td><%= dsuser.get(i).getId() %></td>
                <td><%= dsuser.get(i).getUsername() %></td>
                <td><%= dsuser.get(i).getPassword() %></td>
                <td><%= dsuser.get(i).getFullname() %></td>
                <td><%= dsuser.get(i).getEmail() %></td>
                <td><%= dsuser.get(i).getPhone() %></td>
                <td><%= dsuser.get(i).getRole() %></td>
            <form method="get" action="../UserController">
                <td><input  type="submit" name="_type" value="DELETE"/></td>
                <td><input  type="submit" name="_type" value="UPDATE"/></td>
                <input type="hidden" name="userid" value="<%= dsuser.get(i).getId() %>" />
            </form>

            </tr>
        <% } %>
        </table>
                <!-----------------nội dung ----------->
            </div>
            </article>
        </div>
    </body>
            <script type="text/javascript">
var duyet=1;
function duyettoi()
{
    duyet=duyet+1;
    if (duyet==4)
      {
      duyet=1;
      }
     document.getElementById('hopchuaanh').innerHTML = "<a href='dienthoai" +duyet+ ".html'  ><img src='img/anh" + duyet +".jpg' style='width:100%; height:300px' </a>";

    
}
function duyetlui()
{
    duyet=duyet -1;
    if (duyet==0)
       {
       duyet=3;
       }
    document.getElementById('hopchuaanh').innerHTML = "<a href='dienthoai" +duyet+ ".html' ><img src='img/anh" +duyet +".jpg'style='width:100%; height:300px'</a>";
}

setInterval(function(){duyettoi();},3000);
</script>
    <style>
        body{
    margin: 0;
    padding: 0;
}
.container{
    max-width: 100%;
    margin: 0 auto;
    padding: 0;
    
}
banner{
    background-color: lightblue;
    width: 100%;
    min-height: 100px;
    padding: 10px;
}
topmenu{
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
.clear {
    clear: both;
}
.row1{
    width: 100%;
    margin: 5px;
}
.row1 .slideshow{
    width: 100%;
    height: 300px;
    float: left;
    margin-left: -10px;
    margin-right: 20px;
}

.slideshow-container img{
    height: 300px;
}
table, th, td{
    border:1px solid #eae7de;
}
table{
    border-collapse:collapse;
    margin-left: 30px;
}
td{
    padding: 10px 50px 10px 50px;
    
}
tr:hover{
    background-color:#eae7de;
    cursor:pointer;
}
h1{
    text-align: center;
    color: #333399;
}
td input {
    background-color: #00BB00; color: white; border: 1px solid #eae7de
}
td input:hover{
    background-color: #FF0033; color: white; border: 1px solid #eae7de
}
    </style>
    
</html>
