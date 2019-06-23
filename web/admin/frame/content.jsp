<%@ page import="factory.Factory" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>left</title>
    <link rel="stylesheet" type="text/css" href="../../css/content.css">
    <%
        if(Factory.operator.user==null)
        {
            request.getRequestDispatcher("admin/frame/index.jsp");
        }
    %>
</head>
<body>
<div id="whole">
    <div id="content">
        欢迎使用本网站后台管理系统...
    </div>
</div>
</body>
</html>
