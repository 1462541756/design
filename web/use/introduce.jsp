<%--
  Created by IntelliJ IDEA.
  User: 斌果果
  Date: 2019/6/17
  Time: 23:18
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
    <div class="divOfIntroduceLeft">
        <div class="introduceLeftOne" style="background: <%=topBackground%>">课程介绍</div>
        <div class="introduceLeftOther">
            <div id="other1" onmousemove="changeColorOfIntroduce(1)" onmouseout="reductionOfIntroduce(1)" onclick="changeText('1','课程简介')">
                <br/>
                课程简介
                <hr class="hrOfIntroduce">
            </div>
            <div id="other2" onmousemove="changeColorOfIntroduce(2)" onmouseout="reductionOfIntroduce(2)" onclick="changeText('2','教学方法')">
                <br/>
                教学方法
                <hr class="hrOfIntroduce">
            </div>
            <div id="other3" onmousemove="changeColorOfIntroduce(3)" onmouseout="reductionOfIntroduce(3)" onclick="changeText('3','课程安排')">
                <br/>
                课程安排
                <hr class="hrOfIntroduce">
            </div>
            <div id="other4" onmousemove="changeColorOfIntroduce(4)" onmouseout="reductionOfIntroduce(4)" onclick="changeText('4','课程大纲')">
                <br/>
                课程大纲
                <hr class="hrOfIntroduce">
            </div>
            <div id="other5" onmousemove="changeColorOfIntroduce(5)" onmouseout="reductionOfIntroduce(5)" onclick="changeText('5','课程思想与目标')">
                <br/>
                课程思想与目标
                <hr class="hrOfIntroduce">
            </div>
            <div id="other6" onmousemove="changeColorOfIntroduce(6)" onmouseout="reductionOfIntroduce(6)" onclick="changeText('6','课程动态')">
                <br/>
                课程动态
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

                <td class="level">
                    <text style="color: red">你的当前位置：</text>课程介绍>
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
        <div id="changeDiv">

        </div>
    </div>
</body>
</html>
