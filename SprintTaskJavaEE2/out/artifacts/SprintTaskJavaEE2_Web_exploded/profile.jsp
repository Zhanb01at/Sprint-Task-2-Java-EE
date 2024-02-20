<%@ page import="java.util.ArrayList" %>
<%@ page import="classes.Items" %>
<%@ page import="classes.Users" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@include file="vendor/head.jsp"%>
</head>
<body>
<%@include file="vendor/navbar.jsp"%>
<div class="container">
    <div style="text-align: center; padding-top: 30px">
        <%
            Users user = (Users) request.getSession().getAttribute("current");
        %>
        <h2>Hello <%=user.getFullName()%></h2>
        <p>This is your profile page</p>
    </div>
</div>
</body>
</html>
