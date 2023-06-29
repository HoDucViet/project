<%-- 
    Document   : index
    Created on : Oct 20, 2019, 12:11:20 AM
    Author     : PC
--%>

<%@page import="java.util.List"%>
<%@page import="com.poly.models.Product"%>
<%@page import="com.poly.dao.ProductDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
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

    </style>
                        
</html>
