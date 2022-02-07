<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>登录</title>
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
    <a href="<%=request.getContextPath() %>/login2"><img src="./img/logo2.png" alt="1" width="150px"></a>
</div>
<div id="loginp">
    <h1>汽车租赁系统</h1>
    <a>用户登录</a>
    <a id="loginp_"> </a>
    <br><br>
    <div class="middlebox11">
    <form id="login"  class="input-group" action="<%=request.getContextPath() %>/login" method="post">
        <input type="text" style="width: 250px;height: 30px;" class="input-field" name="login_id" placeholder="账号id" required><br><br>
        <input type="text" style="width: 250px;height: 30px;" class="input-field" placeholder="密码" name="login_pwd" required><br><br>
        <button type="submit" class="submit-btn" id="login_btn"><img src="./img/Button_denglu.png" alt="2" width="330px" ></button>
    </form>
    <br>





    <a href="<%=request.getContextPath() %>/sign1"><button type="submit" class="submit-btn" id="sign_btn"><img src="./img/Button_zhuce.png" alt="2" width="330px" ></button></a>
    <br><br>
    <a href="<%=request.getContextPath() %>/delete1"><button type="submit" class="submit-btn" id="sign_btn"><img src="./img/Button_zhuxiao.png" alt="2" width="330px" ></button></a>
    </div>
    <br>

    <br><br><br>

    <br>

    <a id="loginp_">-----------------选择其他登录方式-----------------</a>
    <br>
    <a href="<%=request.getContextPath() %>/wechat"><img src="./img/wechat.png"></a>
    <br><br><br>
    <a id="loginp_" >注册即代表你同意<a href="<%=request.getContextPath() %>/agreement" id="loginp_">《汽车租赁系统及隐私条款》</a></a>
</div>
</body>
</html>