<%@ page import="factory.Factory" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>left</title>
    <link rel="stylesheet" type="text/css" href="../../css/left.css">
    <script src="../../js/action.js"></script>
    <%
        if(Factory.operator.user==null)
        {
            request.getRequestDispatcher("/admin/index.jsp");
        }
    %>
</head>
<body onload="startTime()">
<div id="whole">
    <div id="left">
        <table class="system-table">
            <tr><td id="time"></td></tr>
            <tr><td class="system-td">网战内容管理<input id="estate1" type="image" value="closed" src="../../image/admin/closed.png" onclick="estate('estate1','system-management','')"/></td></tr>
            <tr>
                <td>
                    <table id="system-management">
                        <tr><td><input class="img-triangle" type="image" src="../../image/admin/triangle.png" alt=">"/>
                            <a href="MessageManagementServlet" target="showFrame">留言管理</a></td></tr>
                        <tr><td><input class="img-triangle" type="image" src="../../image/admin/triangle.png" alt=">"/>
                            <a href="ArticleManagementServlet" target="showFrame">文章管理</a></td></tr>
                        <tr><td><input class="img-triangle" type="image" src="../../image/admin/triangle.png" alt=">"/>
                            <a href="ReviewArticlesServlet" target="showFrame">审核文章</a></td></tr>
                        <tr><td><input class="img-triangle" type="image" src="../../image/admin/triangle.png" alt=">"/>
                            <a href="ColumnManagementServlet" target="showFrame">栏目管理</a></td></tr>
                    </table>
                </td>
            </tr>
            <tr><td class="system-td">系统设置<input id="estate2" type="image" value="closed" src="../../image/admin/closed.png" onclick="estate('estate2','system-setting','')"/></td></tr>
            <tr>
                <td>
                    <table id="system-setting">
                        <tr><td><input class="img-triangle" type="image" src="../../image/admin/triangle.png" alt=">"/>
                            <a href="#" target="showFrame">权限管理</a>
                        </td></tr>
                        <tr><td><input class="img-triangle" type="image" src="../../image/admin/triangle.png" alt=">"/>
                            <a href="#" target="showFrame">模块管理</a>
                        </td></tr>
                        <tr><td><input class="img-triangle" type="image" src="../../image/admin/triangle.png" alt=">"/>
                            <a href="#" target="showFrame">角色分配</a>
                        </td></tr>
                        <tr><td><input class="img-triangle" type="image" src="../../image/admin/triangle.png" alt=">"/>
                            <a href="#" target="showFrame">人员管理</a>
                        </td></tr>
                        <tr><td><input class="img-triangle" type="image" src="../../image/admin/triangle.png" alt=">"/>
                            <a href="#" target="showFrame">角色管理</a>
                        </td></tr>
                        <tr><td><input class="img-triangle" type="image" src="../../image/admin/triangle.png" alt=">"/>
                            <a href="#" target="showFrame">默认功能设置</a>
                        </td></tr>
                        <tr><td><input class="img-triangle" type="image" src="../../image/admin/triangle.png" alt=">"/>
                            <a href="#" target="showFrame">首页信息设置</a>
                        </td></tr>
                        <tr><td><input class="img-triangle" type="image" src="../../img/admin/triangle.png" alt=">"/>
                            <a href="#" target="showFrame">码表管理</a>
                        </td></tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
</div>
</body>
</html>
