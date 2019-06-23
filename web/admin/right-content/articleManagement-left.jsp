<%--
  Created by IntelliJ IDEA.
  User: 1462541756
  Date: 2019/6/18
  Time: 11:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>articleManagement-left</title>
    <link rel="stylesheet" type="text/css" href="../../css/articleManagement-left.css">
    <script src="../../js/action.js"></script>
</head>
<body>
<div id="whole">
    <div id="articleManagement-left">
        <table class="system-table">
            <tr><td class="total-td">
                <input id="total" class="img" type="image" value="closed" src="../../image/admin/closed2.png" alt="+" onclick="estate('total','total-table','2')"/>
                所有栏目
            </td></tr>
            <tr><td>
                <table id="total-table" style="display: none" class="table">
                    <tr><td>
                        <input id="homePage" class="img"  type="image" value="closed" src="../../image/admin/closed2.png" alt="+" onclick="estate('homePage','homePage-table','2')"/>
                        首页
                    </td></tr>
                    <tr><td class="table">
                        <table id="homePage-table" style="display: none" class="table">
                            <tr><td>
                                <a href="ArticleManagementHomePageServlet" target="articleManagement-showFrame">首页</a>
                            </td></tr>
                        </table>
                    </td></tr>
                </table>
            </td></tr>
        </table>
    </div>
</div>
</body>
</html>
