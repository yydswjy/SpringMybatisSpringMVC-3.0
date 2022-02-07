<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>微信登录</title>
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
<video src="./img/Neko.mp4" muted loop="loop" autoplay="autoplay"></video>
<div id="middle">
  <img src="./img/logo2.png" alt="1" width="150px">
</div>
<div id="loginp">
  <a id="loginp_" href="<%=request.getContextPath() %>/login2">返回</a>
  <br>
  <br>
  <a>微信扫码登录</a>
  <br><br><br>
  <img src="./img/${user.wechatimg}" />
  <br>
  <a id="loginp_" >注册即代表你同意<a href="./agreement.jsp" id="loginp_">《汽车租赁系统及隐私条款》</a></a>
</div>

</body>

</html>
