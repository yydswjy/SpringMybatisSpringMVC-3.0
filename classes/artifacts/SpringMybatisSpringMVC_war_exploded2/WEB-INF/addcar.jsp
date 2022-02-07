<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/12/10 0010
  Time: 23:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form id="addcar"  class="input-group" action="<%=request.getContextPath() %>/addcarok" method="post">
    <input type="text" style="width: 250px;height: 30px;"  class="input-field" placeholder="车牌" name="num"><br><br>
    <input type="text" style="width: 250px;height: 30px;"  class="input-field" placeholder="类型" name="type"><br><br>
    <input type="text" style="width: 250px;height: 30px;"  class="input-field" placeholder="颜色" name="color"><br><br>
    <input type="text" style="width: 250px;height: 30px;"  class="input-field" placeholder="租借价钱" name="price"><br><br>
    <button  style="width: 250px;height: 30px;color: rgb(147, 184, 184);"  type="submit" class="submit-btn" id="login_btn">添加</button>
</form>
</body>
</html>
