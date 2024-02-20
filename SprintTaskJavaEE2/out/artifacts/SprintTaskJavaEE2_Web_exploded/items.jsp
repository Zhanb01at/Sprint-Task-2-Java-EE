<%@ page import="java.util.ArrayList" %>
<%@ page import="classes.Items" %>
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
            <h2>Welcome to BITLAB SHOP</h2>
            <p>Electronic devices with high quality and service</p>
        </div>
        <div style="display: flex; flex-wrap: wrap; margin-top: 40px; justify-content: space-around">
            <%
                ArrayList<Items> items = (ArrayList<Items>) request.getAttribute("itemy");
                if(items!=null){
                    for (Items it : items){
            %>
            <div style="width: 30%; text-align: center; background: white; padding: 10px; margin-bottom: 20px; border-radius: 10px; box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.5);">
                <p style="font-size: 18px;"><%=it.getName()%></p>
                <h4 class="text-success">$<%=it.getPrice()%></h4>
                <pre style="font-family: Arial; margin-top: 10px"><%=it.getDescription()%></pre>
                <button class="bg-success" style="width: 100%; color: white; border-radius: 5px" type="button">Buy now</button>
            </div>
            <%
                    }
                }
            %>
        </div>
    </div>
</body>
</html>
