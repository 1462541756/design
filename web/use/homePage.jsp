<%@ page import="service.MyService" %>
<%@ page import="factory.Factory" %>
<%@ page import="entity.Article" %><%--
  Created by IntelliJ IDEA.
  User: 斌果果
  Date: 2019/6/17
  Time: 22:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%
        MyService myService = Factory.getInstance().getService();
        Article article=myService.getArticleEntity(2l);
    %>
</head>
<body >
<table>
    <tr>
        <td>
            <img src="../image/vertical.png" style="margin-left: 20px">
            <text class="textOfConstruction">课程简介</text>
            <text  class="transparent" >Introduce</text>
            <hr class="hrOfHomePage" width="640px">
        </td>
        <td>
            <img src="../image/vertical.png" style="margin-left: 30px">
            <text class="textOfConstruction">课程负责人</text>
            <text  class="transparent" >Principal</text>
            <hr class="hrOfHomePage" style="margin-left: 30px" width="380px">
        </td>
    </tr>
    <tr>
        <td>
            <div class="textOfTd" style="margin-left: 20px" id="introduce">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%= article.content%>
            </div>
        </td>
        <td>
            <div class="textOfTd" id="principal">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </div>
        </td>
    </tr>
    <tr>
        <td>
            <div class="divOfTd" style="margin-left: 10px">
                <img src="../image/vertical.png" style="margin-left: 10px">
                <text class="textOfHomePage">课程动态</text>
                <text  class="transparent" >Dynamic State</text>
                <a >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    MORE</a>
                <hr class="hrOfHomePage2" width="600px">
            </div>
        </td>
        <td >
            <div class="divOfTd" style="margin-left: 20px">
                <img src="../image/vertical.png" style="margin-left: 10px">
                <text class="textOfHomePage">教学资源</text>
                <text  class="transparent" >Resource</text>
                <hr class="hrOfHomePage2" width="370px">
            </div>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <img src="../image/vertical.png" style="margin-left: 20px">
            <text class="textOfHomePage">课程组成员</text>
            <text  class="transparent" >Members</text>

            <div class="divOfBottom" >
                <input type="button" style="background: url(../image/left.png)" class="left">
                <input type="button" style="background: url(../image/right.png)" class="right">
            </div>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <img src="../image/e.png" style="margin-left: 10px;margin-top: 100px">
            <text>&nbsp;&nbsp;友情链接&nbsp;:&nbsp;&nbsp;&nbsp;</text>
            <a href="#" style="color: black; text-decoration: none;" onclick="window.location.href='https://www.cqut.edu.cn/'">重庆理工大学&nbsp;&nbsp;</a>
            <a href="#" style="color: black; text-decoration: none;" onclick="window.location.href='https://www.baidu.com/'">百度</a>
        </td>
    </tr>
</table>
</body>
</html>
