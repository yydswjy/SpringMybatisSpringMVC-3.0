<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>success page</title>
</head>
<body style="background-color: rgba(140, 199, 223, 0.582);">
<div style="text-align: center;margin-top: 200px;margin-bottom: 250px;">
    <h2 style="font-size: 50px;">更改新闻</h2>
    <form action="<%=request.getContextPath() %>/updateok" method="post">
    <p>ID: <input  style="width: 250px;height: 30px;" type="text" name="goodsid" value="${goods_old.id}"/></p>
    <p>标题: <input  style="width: 250px;height: 30px;" type="text" name="goodsname" value="${goods_old.name}"/></p>
    <p>时间: <input  style="width: 250px;height: 30px;" type="text" name="goodstime" value="${goods_old.time}"/></p>
    <p>发布人: <input  style="width: 250px;height: 30px;" type="text" name="goodsposter" value="${goods_old.poster}"/></p>
    <p>简介: <input  style="width: 250px;height: 30px;" type="text" name="goodsimfor" value="${goods_old.imfor}"/></p>
    <p>详情: <input style="width: 250px;height: 30px;"  type="text" name="goodsmore" value="${goods_old.more}"/></p>
    <input type="submit" value="Submit" />
</form>

</div>
</body>
</html>