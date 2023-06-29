<%-- 
    Document   : list
    Created on : Jun 20, 2023, 9:24:25 AM
    Author     : Ho Duc Viet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript">
            function doDelete(id){
                if(confirm("Are you sure to delete category with id="+id)){
                    window.location="delete?id="+id;
                }
            }
        </script>
    </head>
    <body>
    <center>
        <h1>List of categories</h1>
        <h3><a href="add.jsp">Add new</a></h3>
        <table border="1px" width="40%">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Describe</th>
                <th>ACTION</th>
                                  
            </tr>
            <c:forEach items="${requestScope.data}" var="c">
                <c:set var="id" value="${c.id}"/>
                <tr>
                    <td>${id}</td>
                    <td>${c.name}</td>
                    <td>${c.describe}</td>
                    <tD>
                       <div style="display: flex; justify-content: space-between;">
                    <a href="update?id=${id}">Update</a> &nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="#" onclick="doDelete('${id}')">Delete</a>
                </div>
                </tD>
                </tr>
            </c:forEach>
        </table>
    </center>
        
    </body>
</html>
