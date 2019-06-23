<%--
  Created by IntelliJ IDEA.
  User: 1462541756
  Date: 2019/6/18
  Time: 10:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>文章管理</title>
</head>
<frameset rows="60px,*" style="background-color: #f1fbff;">
    <frame name="top" src="../right-content/articleManagement-top.jsp" scrolling="no" frameborder="1" noresize="noresize"/>
    <frameset cols="300px,*">
        <frame src="../right-content/articleManagement-left.jsp" scrolling="no" frameborder="1" noresize="noresize"/>
        <frame src="../right-content/articleManagement-content.jsp" name="articleManagement-showFrame" scrolling="no" name="showFrame" frameborder="0" noresize="noresize"/>
    </frameset>
</frameset>
</html>
