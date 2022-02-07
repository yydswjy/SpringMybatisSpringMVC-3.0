<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>注销</title>
    <meta charset="utf-8" />
    <link href="./css/login.css" rel="Stylesheet" media="all" />
    <style type="text/css">
        body{
            margin:0;
        }
        video{
            position: fixed;
            right: 0;
            bottom: 0;
            min-width: 100%;
            min-height: 100%;
            width: auto;
            height: auto;
            z-index: -100;
        }
    </style>
</head>

<body>
<video src="./img/Neko.mp4" loop="loop" muted autoplay="autoplay"></video>
<div id="middle">
    <a href=""><img src="./img/logo2.png" alt="1" width="150px"></a>
</div>
<div id="loginp">
    <h1>汽车租赁系统</h1>
    <a>用户注销</a>

    <br><br>
    <div class="middlebox11">
        <%--        <input class="input" maxlength="11" placeholder="请输入账号" type=“text”>--%>
        <%--        <br>--%>
        <%--        <input class="input" maxlength="11" placeholder="请输入密码" type=“text”>--%>


            <form id="delect" class="input-group" action="<%=request.getContextPath() %>/delete" method="post">
                <input style="width: 250px;height: 30px;"  type="text" class="input-field" name="delete_id" placeholder="要注销的ID" required><br><br>
                <input  style="width: 250px;height: 30px;" type="text" class="input-field" name="delete_pwd" placeholder="密码" required><br><br>
                <button  style="width: 250px;height: 30px;color: rgb(147, 184, 184);" type="submit" class="submit-btn" ><img src="./img/Button_zhuxiao.png" alt="2" width="330px" ></button>
            </form>

        <br><br>
    </div>
    <br>

    <br><br><br>

    <br>

</div>
</body>
</html>