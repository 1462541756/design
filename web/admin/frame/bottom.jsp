<%@ page import="factory.Factory" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>bottom</title>
    <link rel="stylesheet" type="text/css" href="../../css/bottom.css">
    <%
        if(Factory.operator.user==null)
        {
            request.getRequestDispatcher("admin/frame/index.jsp");
        }
    %>
</head>
<body>
<div id="whole">
    <div id="bottom">
        <div id="version"><input type="image" src="../../image/admin/!.png" ><b><a>版本信息</a></b></div>
    </div>
</div>
</body>
</html>
