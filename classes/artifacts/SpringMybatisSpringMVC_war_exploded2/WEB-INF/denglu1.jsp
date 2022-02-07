<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
        <title>登录</title>

        <link rel="stylesheet" href="css/denglu1.css">
        <script src="js/iconfont.js"></script>
</head>
<body style="background-color: rgba(140, 199, 223, 0.582);">


<div style="text-align: center;margin-top: 200px;margin-bottom: 250px;">
    <h2 style="font-size: 50px;">登录</h2>
    <form id="login"  class="input-group" action="<%=request.getContextPath() %>/login" method="post">
        <input type="text" style="width: 250px;height: 30px;" class="input-field" name="login_id" placeholder="账号id" required><br><br>
        <input type="text" style="width: 250px;height: 30px;"  class="input-field" placeholder="密码" name="login_pwd" required><br><br>
        <button  style="width: 250px;height: 30px;color: rgb(147, 184, 184);"  type="submit" class="submit-btn" id="login_btn">登录</button>
    </form>
    <br>
    <h2 style="font-size: 50px;">注册</h2>
    <form id="register" class="input-group" action="<%=request.getContextPath() %>/sign" method="post">
        <input  style="width: 250px;height: 30px;" type="text" class="input-field" name="user_id" placeholder="ID" required><br><br>
        <input  style="width: 250px;height: 30px;" type="text" class="input-field" name="user_pwd" placeholder="密码" required><br><br>
        <input  style="width: 250px;height: 30px;" type="text" class="input-field" name="name" placeholder="姓名" required><br><br>
        <input  style="width: 250px;height: 30px;" type="text" class="input-field" name="phone" placeholder="联系方式" required><br><br>
        <input  style="width: 250px;height: 30px;" type="text" class="input-field" name="add" placeholder="地址" required><br><br>
        <input  style="width: 250px;height: 30px;" type="text" class="input-field" name="sex" placeholder="性别" required><br><br>
        <button  style="width: 250px;height: 30px;color: rgb(147, 184, 184);" type="submit" class="submit-btn" id="sign_btn" onclick="alert('注册成功！')">注册</button>
    </form>
    <br>
    <h2 style="font-size: 50px;">注销用户</h2>
    <form id="delect" class="input-group" action="<%=request.getContextPath() %>/delete" method="post">
        <input style="width: 250px;height: 30px;"  type="text" class="input-field" name="delete_id" placeholder="要注销的ID" required><br><br>
        <input  style="width: 250px;height: 30px;" type="text" class="input-field" name="delete_pwd" placeholder="密码" required><br><br>
        <button  style="width: 250px;height: 30px;color: rgb(147, 184, 184);" type="submit" class="submit-btn" >注销</button>
    </form>
</div>
</body>
</html>