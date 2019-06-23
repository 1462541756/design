<%@ page import="factory.Factory" %><%--
  Created by IntelliJ IDEA.
  User: 1462541756
  Date: 2019/6/17
  Time: 16:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>网站后台管理系统</title>
    <%
        if(Factory.operator.user==null)
        {
            request.getRequestDispatcher("admin/frame/index.jsp");
        }
    %>
</head>
<frameset rows="150px,*,50px">
    <frame name="top" src="/admin/frame/top.jsp" scrolling="no" frameborder="1" noresize="noresize"  />
    <frameset cols="300px,*">
        <frame src="/admin/frame/left.jsp" scrolling="auto" frameborder="1" noresize="noresize"/>
        <frame src="/admin/frame/content.jsp" scrolling="no" name="showFrame" frameborder="1" noresize="noresize"/>
    </frameset>
    <frame name="bottom" src="/admin/frame/bottom.jsp" scrolling="no" frameborder="1" noresize="noresize"/>
</frameset>
</html>
