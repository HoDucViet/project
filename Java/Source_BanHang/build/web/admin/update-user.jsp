<%-- 
    Document   : update-user
    Created on : Oct 20, 2019, 12:12:47 AM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.poly.models.User"%>
<%@page import="com.poly.dao.UserDao"%>
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
                <!-----------------nội dung ----------->
        <div class="w3layoutscontaineragileits" style="margin-top: 20px;">                
                <h1>Update User!</h1>
        <%
            
            int id =Integer.parseInt(request.getParameter("id"));
            UserDao dao = new UserDao();
            User user = dao.findById(id);
        %>
        <form action="../UserController" method="get">
            <div class="rdo" style="font-weight: bold; color: #333399">
                <p style="font-weight: bold; color: #FF0033">
                ID: <%= user.getId() %></p>
            <input type="hidden" name="id" value="<%= user.getId()%>" /><br/>
            Username: <input type="text" name="username" value="<%= user.getUsername() %>" /><br/>
            Password: <input type="text" name="password" value="<%= user.getPassword() %>" /><br/>
            Fullname: <input type="text" name="fullname" value="<%= user.getFullname()%>" /><br/>
            email: <input type="text" name="email"       value="<%= user.getEmail()%>" /><br/>
            Phone: <input type="text" name="phone" value="<%= user.getPhone()%>" /><br/>
            <% int role = user.getRole();  %>
            <center>
            Role: <input type="radio" name="role" value="1" <% if(role==1) out.print("checked"); %> />admin
                  <input type="radio" name="role" value="0" <% if(role==0) out.print("checked"); %>/>user<br/> <br/>               
            <input type="submit" name="_type" value="EXE_UPDATE"/></center>
        </form>
            </div>
                <!-----------------nội dung ----------->
            </div>
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
input[type="button"], input[type="submit"] {
	transition: 0.5s all;
	-webkit-transition: 0.5s all;
	-moz-transition: 0.5s all;
	-o-transition: 0.5s all;
	-ms-transition: 0.5s all;
}
.w3layoutscontaineragileits {
    width: 30%;
    margin: 0 auto;
    background: #eae7de;
    padding: 30px;
}

.w3layoutscontaineragileits h2 {
    font-size: 35px;
    font-weight: 300;
    margin-bottom: 30px;
    color: b;
    text-transform: uppercase;
}

.w3layoutscontaineragileits input[type="text"], input[type="password"], input[type="email"]{
	width: 84%;
	padding: 15px 10px 15px;
	font-size: 14px;
	background: transparent;
	border: 2px solid black;
	outline: none;
	margin-bottom: 26px;
	color: black;
	font-family: 'Quicksand', sans-serif;
}
.w3layoutscontaineragileits input[type="text"]{
	background: url("images/user.png") no-repeat 382px 11px;
	background-size: 25px;
}
input[type="email"] {
	background: url("images/e-mail.png") no-repeat 382px 11px;
	background-size: 25px;
}

input[type="password"] {
	background: url("images/password.png") no-repeat 382px 11px;
	background-size: 25px;
}

ul.agileinfotickwthree {
	list-style: none;
	display: inline-block;
	width: 100%;
	margin-bottom: 40px;
	text-align: left;
	padding-left: 10px;
}

ul.agileinfotickwthree li input[type="checkbox"] {
	display: none;
}

ul.agileinfotickwthree li input[type="checkbox"]+label {
	position: relative;
	padding-left: 50px;
	border: black;
	display: inline-block;
	font-size: 15px;
    color: black;
}
ul.agileinfotickwthree a {
    float: right;
    margin-right: 40px;
    color: black;
    font-size: 15px;
}
ul.agileinfotickwthree a:hover {
    color: white;
}
ul.agileinfotickwthree li input[type="checkbox"]+label span:first-child {
	width: 15px;
	height: 15px;
	display: inline-block;
	border: 2px solid black;
	position: absolute;
	top: -1px;
	left: 20px;
	bottom: 4px;
}

ul.agileinfotickwthree li input[type="checkbox"]:checked+label span:first-child:before {
	content: "";
	background: url(images/tick.png)no-repeat;
	position: absolute;
	left: 3px;
	top: 3px;
	font-size: 10px;
	width: 10px;
	height: 10px;
}

input[type="submit"] {
	font-size: 16px;
	padding: 10px 65px;
	background-color: #00BB00;
	color: white;
	border: none;
	border-radius: 0px;
	outline: none;
	float:none;
	cursor: pointer;
}

input[type="submit"]:hover {
    background-color: #FF0033;
    color: white;
}

.aitssendbuttonw3ls p {
    text-align: center;
    margin-top: 40px;
    text-transform: capitalize;
    letter-spacing: 1px;
}

.aitssendbuttonw3ls p a {
    color: black;
    font-weight: 600;
    padding: 8px 20px;
    border: 1px solid black;
}

.aitssendbuttonw3ls p a span {
	font-size: 18px;
}

.aitssendbuttonw3ls p a:hover {
	color: white;
    border: 1px solid black;
}

::-webkit-input-placeholder {
	color: black;
}

::-moz-placeholder {
	color: black;
}

::-moz-placeholder {
	color: black;
}

::-ms-input-placeholder {
	color: black;
}

.w3footeragile {
	margin: 100px 0px 20px;
}

.w3footeragile p a {
	color: #000;
	font-weight:700;
}

.w3footeragile p {
    letter-spacing: 2px;
    color: black;
}

.w3footeragile p a:hover {
	color: black;
}

h1{
    text-align: center;
    color: #333399;
}

    </style>
</html>
