<%--
  Created by IntelliJ IDEA.
  User: 斌果果
  Date: 2019/6/17
  Time: 13:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script language="JavaScript">
        function changeColor(number) {
            var tdId="td"+number;
            document.getElementById(tdId).style.background="#F2EF9A"
        }
        function reColor(number) {
            var tdId="td"+number;
            document.getElementById(tdId).style.background="#e8c1f2"
        }
    </script>
</head>
<body >
<div >
    <table style="margin: auto;text-align: center;background: #e8c1f2;">
        <tr>
            <td>
                <h1>重庆理工大学课程介绍</h1>
            </td>
        </tr>
        <tr>
            <td id="td1">
                <a
                    href="main.jsp?centerJsp=homePage.jsp&className=数据结构" style="text-decoration: none;"
                    onmousemove="changeColor(1)" onmouseout="reColor(1)"
                >
                    数据结构
                </a>
            </td>
        </tr>
        <tr>
            <td id="td2">
                <a
                     href="main.jsp?centerJsp=homePage.jsp&className=高级Java" style="text-decoration: none;"
                     onmousemove="changeColor(2)" onmouseout="reColor(2)"
                >
                    高级Java
                </a>
            </td>
        </tr>
    </table>
</div>
</body>
</html>
