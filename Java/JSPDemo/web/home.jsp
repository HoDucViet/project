<%-- 
    Document   : home
    Created on : Jun 18, 2023, 5:03:52 PM
    Author     : Ho Duc Viet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.text.DecimalFormat" %>
<!DOCTYPE html>
<html>
    <head>
        <!<!-- Đây là cách làm hoàn toàn = JSP -->
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Example for JSP</h1>
        <h2 style="color: chocolate">
        <%
            String name="Ho Duc Viet";
            out.println("Hello "+name+"!");
            out.println("<br/>So PI:"+Math.PI);
            double r=2;
            DecimalFormat f=new DecimalFormat("##.##");
            //Đây là chú thích của java trên 1 dòng
        %>
        <!--đây là chú thích của html-->
        </h2>
<!--        <h2 style="color: blue">
            Dien tich la:<%= f.format(Math.PI*r*r) %>
        </h2>-->
    <h1>Bai 1</h1>
    <form>
        enter radius:<input type="text" name="r"/><br/>
        <input type="submit" value="SUBMIT"/>
    </form>
    <%
        if(request.getParameter("r")!=null){
        String r_raw=request.getParameter("r");
        double ra;
        try{
           ra=Double.parseDouble(r_raw);
           double s=ra*ra*Math.PI;
           %>
           <h2>Dien tich la:<%= f.format(s)%></h2>
           <%     
        }
        catch(Exception e){
                 System.out.print(e);
                }
         }
    %>    
    </body>
</html>
