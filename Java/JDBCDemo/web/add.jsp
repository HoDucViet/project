<%-- 
    Document   : add
    Created on : Jun 20, 2023, 9:48:32 AM
    Author     : Ho Duc Viet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Add new a category</h1>
        <h3 style="color:red">${requestScope.error}</h3>
        <form action="add">
            Enter ID:<input type="number" name="id"><br/>
            Enter name:<input type="text" name="name"><br/>
            Enter describe:<input type="text" name="describe"><br/>
            <input type="submit" value="SAVE"/>
        </form>
    </body>
</html>
