<%@ page import="factory.Factory" %><%--
  Created by IntelliJ IDEA.
  User: 1462541756
  Date: 2019/6/17
  Time: 16:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>top</title>
    <link rel="stylesheet" type="text/css" href="../../css/top.css">
    <%
        if(Factory.operator.user==null)
        {
            request.getRequestDispatcher("admin/frame/index.jsp");
        }
    %>
</head>
<body>
<div id="whole">
    <div <%--id="top"--%>><input id="header" type="image" src="../../image/admin/header.png" /></div>
    <%--<div id="bottom"></div>--%>
</div>
</body>
</html>
