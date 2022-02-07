<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>注册</title>
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
    <a>用户注册</a>

    <br><br>
    <div class="middlebox11">

        <form id="register" class="input-group" action="<%=request.getContextPath() %>/sign" method="post">
            <input  style="width: 250px;height: 30px;" type="text" class="input-field" name="user_id" placeholder="ID" required><br><br>
            <input  style="width: 250px;height: 30px;" type="text" class="input-field" name="user_pwd" placeholder="密码" required><br><br>
            <input  style="width: 250px;height: 30px;" type="text" class="input-field" name="name" placeholder="姓名" required><br><br>
            <input  style="width: 250px;height: 30px;" type="text" class="input-field" name="phone" placeholder="联系方式" required><br><br>
            <input  style="width: 250px;height: 30px;" type="text" class="input-field" name="add" placeholder="地址" required><br><br>
            <input  style="width: 250px;height: 30px;" type="text" class="input-field" name="sex" placeholder="性别" required><br><br>
            <button  style="width: 250px;height: 30px;color: rgb(147, 184, 184);" type="submit" class="submit-btn" id="sign_btn"><img src="./img/Button_zhuce.png" alt="2" width="330px" ></button>
        </form>

        <br><br>
    </div>
    <br>

    <br><br><br>

    <br>

    <a id="loginp_">-----------------选择其他登录方式-----------------</a>
    <br>
    <a href="./login_wechat.jsp"><img src="./img/wechat.png" href="./login_wechat.jsp"></a>
    <br><br><br>
    <a id="loginp_" >注册即代表你同意<a href="./agreement.jsp" id="loginp_">《汽车租赁系统及隐私条款》</a></a>
</div>
</body>
</html>