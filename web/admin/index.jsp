<%@ page import="java.util.Random" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Random random=new Random();
    String verify="";
    verify+=random.nextInt(10);
    verify+=random.nextInt(10);
    verify+=random.nextInt(10);
    verify+=random.nextInt(10);
    System.out.println(verify);
%>
<html>
<head>
    <meta charset="UTF-8">
    <title>登录界面</title>
    <style>
        *{
            font-family: "微软雅黑";
        }
        input{
            height: 33px;
            width: 200px;
            border-radius: 4px;
            background-color: #d7effa;
        }
        #first{
            width: 650px;
            height: 300px;
            margin: 200px auto;
            background: #fcfdfd;
            border-radius: 10px;
            -webkit-box-reflect: below 2px -webkit-gradient(linear,left top,left bottom,from(transparent),color-stop(0.8,transparent),to(#226dc7));
        }
        #caption{
            color: #226dc7;
            font-size: 31px;
            margin: 10px 0 46px 0px;
            -webkit-box-reflect: below 2px -webkit-gradient(linear,left top,left bottom,from(transparent),color-stop(0.3,transparent),to(white));
        }
        #login{
            margin-bottom: 20px;
            margin-left: 70px;
            width: 100px;
            height: 100px;
            -webkit-box-reflect: below 2px -webkit-gradient(linear,left top,left bottom,from(transparent),color-stop(0.6,transparent),to(white));
            box-shadow: 5px 5px 5px #226dc7;
        }
        #verify{
            width: 100px;
        }
        #verify-text{
            width: 80px;
            margin-left: 15px;
            color: red;
        }
        #form{
            margin-left: 120px;
        }
        tr{
            line-height: 40px;
        }
    </style>
    <%
        String prompt1;//验证用户密码
        String prompt2;//验证验证码
        if(request.getAttribute("prompt1")==null){
            prompt1="";
        }
        else prompt1="用户名或密码错误";
        if(request.getAttribute("prompt2")==null){
            prompt2="";
        }
        else prompt2="验证码输入错误";
    %>
</head>
<body style="background: #226dc7;background: linear-gradient(#103560,#226dc7);">
<div style="width: 100%">
    <div id="first" >
        <p><b style="margin: 10px;">user login</b></p>
        <p id="caption"><b>网站后台管理系统</b></p>
        <form id="form" action="adminLogin" method="post">
            <table>
                <tr>
                    <td>
                        <table>
                            <tr>
                                <td >用户名:</td>
                                <td colspan="2"><input name="account" type="text" placeholder="请输入长度不大于12的字符" required></td>
                            </tr>
                            <tr>
                                <td>密码</td>
                                <td colspan="2"><input name="password" type="password" placeholder="请输入长度不大于12的字符" required>
                                </td>

                            </tr>
                            <tr>
                                <td>验证码：</td>
                                <td><input id="verify" name="verify" type="number"  required>
                                    <input id="verify-text" name="verify-text" value="<%=verify%>" readonly>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" style="text-align: center">
                                    <%=prompt2%>
                                    <%=prompt1%>
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td><input id="login" type="image" src="../image/admin/login.png" alt="登录"></td>
                </tr>

            </table>
        </form>
    </div>
</div>
</body>
</html>
