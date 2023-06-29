<%-- 
    Document   : add-product
    Created on : Oct 20, 2019, 12:11:03 AM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.poly.models.Category"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.poly.dao.CategoryDao"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    </style>
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
            User user5=(User)session.getAttribute("userlogined");
            if(user5==null)
                response.sendRedirect(request.getContextPath()+"/login.jsp");
            %>
                <!-----------------nội dung ----------->
        <div class="w3layoutscontaineragileits" style="margin-top: 20px;">
        <h1>Thêm Product!</h1>
        <h5 style="font-weight: bold;">Upload File</h5>
        <form action = "UploadFile.jsp" method = "post"
            enctype = "multipart/form-data">
            <input type = "file" name = "file" size = "50" />
            <br /> <br/>
            <input style="padding: 5px;" type = "submit" value = "Upload File" />
        </form> <br/>
        <%
            String filename = request.getParameter("filename");
            if(filename!= null){
                out.print("upload thanh cong"+filename);
            }
        %>
        <form action="../ProductController" method="get">
            <input type="text" Name="name" placeholder="NAME" required="">
            <input type="text" Name="price" placeholder="PRICE" required="">
            <input type="text" Name="note" placeholder="NOTE" required="">
            <input type="text" Name="image" placeholder="IMAGE" required="" value="<%= filename %>">
            <div class="rdo" style="font-weight: bold; color: #FF0033">
            Category: 
            <select name="category_id">
                <%
                    CategoryDao dao = new CategoryDao();
                    ArrayList<Category> ds = dao.fillAllCategories();
                    for(int i =0; i<ds.size();i++){
                        out.print("<option value="+ds.get(i).getId()+">"+ds.get(i).getName()+"</option>");
                        System.out.print(ds.get(i).getName());
                    }
                    
                %>
            </select><br/><br/>
            </div>
            <center> <input type="submit" name="_type" value="INSERT"/> </center>
        </form> 
            </div>
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
