<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<html>
<head>
  <link rel="stylesheet" href="WEB-INF/css/login.css">
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
<div style="text-align: center;margin-top: 250px;">


  <h2 style="font-size: 50px;">汽车租赁系统</h2>
  <a href="<%=request.getContextPath() %>/login1" style="text-decoration:none;font-size: 30px;">登录</a><br><br><br>
  <a href="<%=request.getContextPath() %>/carlist" style="text-decoration:none;font-size: 30px;">【测试】租借车辆</a><br><br><br>
  <a href="<%=request.getContextPath() %>/myorderlist" style="text-decoration:none;font-size: 30px;">【测试】我的租车列表</a><br><br><br>
  <a href="<%=request.getContextPath() %>/addcar" style="text-decoration:none;font-size: 30px;">【测试】出租车辆</a><br><br><br>

</div>
<div id="middle">
</div>

<div id="loginp">
  <a>用户登录</a>
  <a id="loginp1">(未注册手机首次登陆自动注册)</a>
  <br><br>
  <div class="middlebox11">
    <input class="input" maxlength="11" placeholder="请输入手机号码" type=“text”>
  </div>
  <br>
  <br><br>
  <a href="./login_anime.html"><img src="./img/loginb.png" alt="2" width="330px" ></a>
  <br>

  <a id="loginp1">-----------------选择其他登录方式-----------------</a>
  <br>
  <a href="./login_wechat.html"><img src="./img/wechat.png" href="./login_wechat.html"></a>
  <br><br><br>
  <a id="loginp1" >注册即代表你同意</a>
  <a href="./agreement.html" id="loginp1">《维尔特游戏中心服务及隐私条款》</a></a>
</div>



</body>
</html>
