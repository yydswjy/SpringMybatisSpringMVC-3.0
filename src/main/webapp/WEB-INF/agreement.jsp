
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>汽车租赁协议</title>
    <meta charset="utf-8" />
    <link href="./css/main.css" rel="Stylesheet" media="all" />
    <script src="js/jquery-3.2.1.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function () {
            $.ajax({
                url: 'http://localhost:8080/SpringMybatisSpringMVC_war_exploded/agreement11',  //url地址
                type: 'GET',
                dataType: 'json',
                timeout: 1000,
                cache: false,
                beforeSend: LoadFunction, //加载执行方法
                error: erryFunction,  //错误执行方法
                success: succFunction //成功执行方法
            })
            function LoadFunction() {
                $("#list").html('加载中...');
            }
            function erryFunction() {
                alert("error");
            }
            function succFunction(user) {
                $("#list").html(user.agreement);
            };
        });
    </script>
    <style type="text/css">
        body{
            margin:0;
        }
    </style>
    <style>
        text1{
            font-size: 20px;
            font-weight: 700
        }
    </style>
</head>

<body>
<a href="<%=request.getContextPath() %>/login2"><img src="./img/getback.png" width="120px" style="position: absolute;left: 30px;top: 20px;"></a>
<div align=center style="margin-top: 100px;">
    <img src="./img/logo.png" width="400px" style="position: absolute;left:700px;top: -10px;"><br>
</div>
<div style="margin-top: 200px;max-width: 800px;margin-left: 520px;line-height:33px;">
    <text1>年度计划隐私政策</text1> <br><br>
    <div id="list">
    </div>
</div>

<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>



</body>
<div id="footer">
    <div id="footword">Copyright © 2000-2077  维尔特 welt'sgame.com All Rights Reserved. 备案号：粤ICP备20002807号-2</div>
</div>

</html>