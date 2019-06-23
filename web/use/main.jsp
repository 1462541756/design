<%--
  Created by IntelliJ IDEA.
  User: 斌果果
  Date: 2019/6/17
  Time: 14:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>重庆理工大学</title>
    <meta charset="UTF-8">
    <link href="css.css" rel="stylesheet" type="text/css">
    <script src="js.js"></script>
</head>
<%--<script language="JavaScript">
    function toHomePage() {
        document.form1.action="HomePageServlet";
        document.form1.method="get";
        document.form1.target="_blank";
        document.form1.submit();
    }
    function toIntroduce() {
        document.form1.action="IntroduceServlet";
        document.form1.method="get";
        document.form1.target="_blank";
        document.form1.submit();
    }
    function toTeam() {
        document.form1.action="TeamServlet";
        document.form1.method="get";
        document.form1.target="_blank";
        document.form1.submit();
    }
    function toConstruction{
        document.form1.action="ConstructionServlet";
        document.form1.method="get";
        document.form1.target="_blank";
        document.form1.submit();
    }
    function toResources() {
        document.form1.action="ResourcesServlet";
        document.form1.method="get";
        document.form1.target="_blank";
        document.form1.submit();
    }
    function toQuestionAndAnswer() {
        document.form1.action="QuestionAndAnswerServlet";
        document.form1.method="get";
        document.form1.target="_blank";
        document.form1.submit();
    }
    function toResearch() {
        document.form1.action="ResearchServlet";
        document.form1.method="get";
        document.form1.target="_blank";
        document.form1.submit();
    }
</script>--%>
<%
    String className;
    String topBackground;
    String bottomBackground;
    String order;
    className=request.getParameter("className");
    if(className==null) {
        className=request.getAttribute("className").toString();
    }

    if(request.getAttribute("topBackground")==null){
        topBackground="-webkit-linear-gradient(top,#FF0045,#FF2520,#FF7365)";
        bottomBackground="red";
        order="001";
    }
    else {
        topBackground = request.getAttribute("topBackground").toString();
        bottomBackground=request.getAttribute("bottomBackground").toString();
        order=request.getAttribute("order").toString();
    }


    String centerJsp=request.getParameter("centerJsp");
    if(centerJsp==null) {
        centerJsp=request.getAttribute("centerJsp").toString();
    }


    session.setAttribute("topBackground",topBackground);
    session.setAttribute("bottomBackground",bottomBackground);
    session.setAttribute("order",order);
    session.setAttribute("className",className);

%>
<body>
<form name="form1">
    <div class="totalDiv">
    <div class="mainTopDiv" id="mainTopDiv" style="background: <%=topBackground%>">
        <table>
            <tr>
                <td style="width: 150px"></td>
                <td style="width: 1100px">
                    <table>
                        <tr>
                            <button type="button" name="radio" class="radio1"
                                    <%if(order.equals("100")){%>
                                        style="color: white"
                                    <%}else{%>
                                        style="color: blue"
                                    <%}%>
                                    onclick="window.location.href='ChangeColorServlet?color=blue&centerJsp=<%=centerJsp%>'">
                                √
                            </button>
                            <button type="button" name="radio" class="radio2"
                                    <%if(order.equals("010")){%>
                                    style="color: white"
                                    <%}else{%>
                                    style="color: green"
                                    <%}%>
                                    onclick="window.location.href='ChangeColorServlet?color=green&centerJsp=<%=centerJsp%>'">
                                √
                            </button>
                            <button type="button" name="radio" class="radio3"
                                    <%if(order.equals("001")){%>
                                    style="color: white"
                                    <%}else{%>
                                    style="color: red"
                                    <%}%>
                                    onclick="window.location.href='ChangeColorServlet?color=red&centerJsp=<%=centerJsp%>'">
                                √
                            </button>
                        </tr>
                        <tr>
                            <td width="700px">
                                <table>
                                    <tr >
                                        <img src="../image/crest.png">
                                    </tr>
                                    <tr>
                                        <p class="font"><%=className%>精品课程</p>
                                    </tr>

                                </table>
                            </td>
                            <td>
                                <img src="../image/cqut.png" style="width:300px;height: 150px ;">
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td>
                                <text style="color: yellow">全站搜索</text>
                                <input>
                                <button style="background-color: yellow">搜索</button>
                            </td>
                        </tr>

                        <tr>

                            <table rules="none" width="1100px" id="tableCenter" style="border-radius: 10px 10px 0 0;background: <%=topBackground%>" >
                                <td >
                                    <div id="tdOfLink1" onmousemove="changeTdColor(1)" onmouseout="reduction(1)">
                                        <a class="linkOfMain" href="HomePageServlet" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;首页&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
                                    </div>
                                </td >

                                <td >
                                    <div id="tdOfLink2" onmousemove="changeTdColor(2)" onmouseout="reduction(2)">
                                        <a class="linkOfMain"  href="IntroduceServlet">&nbsp;&nbsp;课程介绍&nbsp;&nbsp;</a>
                                    </div>
                                </td>

                                <td >
                                    <div id="tdOfLink3" onmousemove="changeTdColor(3)" onmouseout="reduction(3)">

                                        <a class="linkOfMain" href="TeamServlet ">&nbsp;&nbsp;教学团队&nbsp;&nbsp;</a>
                                    </div>
                                </td>

                                <td >
                                    <div id="tdOfLink4" onmousemove="changeTdColor(4)" onmouseout="reduction(4)">
                                        <a class="linkOfMain" href="ConstructionServlet ">&nbsp;&nbsp;课程建设&nbsp;&nbsp;</a>
                                    </div>
                                </td>

                                <td >
                                    <div id="tdOfLink5" onmousemove="changeTdColor(5)" onmouseout="reduction(5)">
                                        <a class="linkOfMain" href="ResourcesServlet">&nbsp;&nbsp;课程资源&nbsp;&nbsp;</a>
                                    </div>
                                </td>

                                <td >
                                    <div id="tdOfLink6" onmousemove="changeTdColor(6)" onmouseout="reduction(6)">
                                    <a class="linkOfMain" href="QuestionAndAnswerServlet">&nbsp;&nbsp;问题与答疑&nbsp;&nbsp;</a>
                                    </div>
                                </td>

                                <td >
                                    <div id="tdOfLink7" onmousemove="changeTdColor(7)" onmouseout="reduction(7)">
                                        <a class="linkOfMain" href="ResearchServlet">&nbsp;&nbsp;课程研究&nbsp;&nbsp;</a>
                                    </div>
                                </td>
                                <td width="250px">
                                </td>
                            </table>

                        </tr>
                    </table>

                </td>
                <td style="width: 150px"></td>
            </tr>
        </table>
    </div>
    <div class="mainMiddleDiv">

        <jsp:include page="<%=centerJsp%>" flush="true"/>
    </div>
    <div class="mainBottomDiv" id="mainBottomDiv" style="background: <%=bottomBackground%>">
        <br/>
        <hr style="color: white">
        <div class="text">重庆理工大学计算机科学与工程学院版权所有</div>
        <div class="text"><br/>联系地址：重庆市巴南区红光大道69号(邮箱:400054) 联系电话:(023)68667334</div>

    </div>

</div>
</form>

</body>
</html>
