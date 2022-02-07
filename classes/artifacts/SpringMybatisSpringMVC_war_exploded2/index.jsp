<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>登录</title>
    <meta charset="utf-8" />
    <link href="WEB-INF/css/login.css" rel="Stylesheet" media="all" />
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
<video src="WEB-INF/img/Neko.mp4" loop="loop" muted autoplay="autoplay"></video>
<div id="middle">
    <a href="WEB-INF/main.jsp"><img src="WEB-INF/img/logo2.png" alt="1" width="150px"></a>
</div>
<div id="loginp">
    <a>用户登录</a>
    <a id="loginp_">(未注册手机首次登陆自动注册)</a>
    <br><br>
    <div class="middlebox11">
        <input class="input" maxlength="11" placeholder="请输入手机号码" type=“text”>
    </div>
    <br>
    <div id="float"><input class="input2" maxlength="4" placeholder="请输入右边字符" type=“text”>
        <button type="submit" id="btn1" >获取校换短信</button></div>

    <img class="pass" src="WEB-INF/img/pass.png">

    <br><br>
    <a href="WEB-INF/login_anime.jsp"><img src="WEB-INF/img/loginb.png" alt="2" width="330px" ></a>
    <br>

    <a id="loginp_">-----------------选择其他登录方式-----------------</a>
    <br>
    <a href="WEB-INF/login_wechat.jsp"><img src="WEB-INF/img/wechat.png" href="./login_wechat.jsp"></a>
    <br><br><br>
    <a id="loginp_" >注册即代表你同意<a href="WEB-INF/agreement.jsp" id="loginp_">《维尔特游戏中心服务及隐私条款》</a></a>
</div>
</body>
<script>
    var getCode = document.getElementById('btn1');
    var wait = 60;
    function time(btn1){
        if (wait===0) {
            btn1.removeAttribute("disabled");
            btn1.innerHTML = "获取校换短信";
            wait = 60;
        }else{
            btn1.setAttribute("disabled",true);
            btn1.innerHTML = wait + "秒后重试";
            wait--;
            setTimeout(function(){
                time(btn1);
            },1000);
        }
    }
    getCode.onclick = function(){
        time(this);
    };
</script>
</html>