<%-- 
    Document   : list
    Created on : Jun 27, 2023, 12:44:31 AM
    Author     : Ho Duc Viet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                margin: 0;
                padding: 0;
            }

            #wrapper {
                width: 90%;
                margin: 0 auto;
            }

            #menu_tab {
                background: #f0f0f0;
                padding: 12px;
            }

            ul.menu {
                margin: 0;
                padding: 0;
                list-style-type: none;
            }

            ul.menu li {
                display: inline-block;
                font-size: 14px;
                line-height: 30px;
                margin-right: 10px;
            }

            ul.menu li a {
                text-decoration: none;
                color: #333;
                padding: 6px 10px;
                border-radius: 4px;
            }

            ul.menu li a:hover {
                background: #e0e0e0;
            }

            ul.menu li.active a {
                background: #ccc;
                color: #fff;
            }

            #content {
                margin-top: 20px;
            }

            table {
                width: 100%;
                border-collapse: collapse;
            }

            th, td {
                text-align: center;
                padding: 8px;
                border: 1px solid #ccc;
            }

            th {
                background: #f0f0f0;
                font-weight: bold;
            }

            td img {
                max-width: 80px;
                max-height: 80px;
            }

            .no-product {
                text-align: center;
                margin-top: 20px;
                font-weight: bold;
            }
        </style>
    </head>
    <body>
        <div id="wrapper">
            <div id="menu_tab" style="background:#E6E6FA " >
                <ul class="menu">
                    <li><a href="products?cid=${0}">ALL</a></li>
                        <c:forEach items="${requestScope.data}" var="c">
                        <li><a href="products?cid=${c.id}">${c.name}</a></li>
                        </c:forEach>
                </ul>
            </div>
            <div class="clr"></div>
            <div id="content">
                <c:set var="list" value="${requestScope.products}"/>
                <c:if test="${((list==null) || (list.size()==0))}">
                    <h3>No product</h3>
                </c:if>
                <c:if test="${((list!=null) && (list.size()>0))}">

                    <table border="1px">
                        <tr>
                            <th style="width: 150px;">Name</th>
                            <th style="width: 100px;">Price</th>
                            <th style="width: 100px;">Image</th>
                            <th style="width: 150px;">Category name</th>
                        </tr>
                        <c:forEach items="${list}" var="p">
                            <tr>
                                <td style="width: 150px;">${p.name}</td>
                                <td style="width: 100px;">
                                    <fmt:formatNumber value="${p.price}" pattern="#,##0" />
                                </td>
                                <td style="width: 100px;"><img src="${p.image}" width="80px" height="80px" /></td>
                                <td style="width: 150px;">${p.category.name}</td>
                            </tr>
                        </c:forEach>
                    </table>
                </c:if>
            </div>
        </div>
    </body>
</html>
