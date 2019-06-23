<%--
  Created by IntelliJ IDEA.
  User: 斌果果
  Date: 2019/6/17
  Time: 23:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%String topBackground=request.getSession().getAttribute("topBackground").toString();%>
    <script language="JavaScript">
        function changeColorOfIntroduce(number) {
            var id="other"+number;
            var div=document.getElementById(id);
            div.style.background="#F2EF9A"
        }
        function reductionOfIntroduce(number) {
            var id="other"+number;
            var div=document.getElementById(id);
            div.style.background="#f0eef2";
        }
    </script>
</head>
<body>
    <div class="divOfTeamLeft">
        <div class="teamLeftOne" style="background: <%=topBackground%>">
            教学团队
        </div>
        <div class="teamLeftOther">
            <div id="other1" onmousemove="changeColorOfIntroduce(1)" onmouseout="reductionOfIntroduce(1)" onclick="changeText('1','课程成员')">
                <br/>
                    课程成员
                <hr class="hrOfIntroduce">
            </div>
            <div id="other2" onmousemove="changeColorOfIntroduce(2)" onmouseout="reductionOfIntroduce(2)" onclick="changeText('2','教学理念')">
                <br/>
                    教学理念
                <hr class="hrOfIntroduce">
            </div>
        </div>
    </div>
    <div class="divOfIntroduceRight">
        <table>
            <tr>
                <td >
                    <img src="../image/tv.png">
                </td>
                <td class="level" >
                    <text style="color: red">你的当前位置：</text>教学团队>
                </td>
                <td id="changeTd">

                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <hr style="color: red;width: 800px">
                </td>
            </tr>
        </table>
        <div id="changeDiv"></div>
    </div>
</body>
</html>
