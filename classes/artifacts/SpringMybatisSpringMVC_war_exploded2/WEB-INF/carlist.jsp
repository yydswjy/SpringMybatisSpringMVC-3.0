<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>被出租车辆列表</title>
</head>
<body style="background-color: rgba(140, 199, 223, 0.582);">
<div style="text-align: center;margin-top: 250px;">
    <h1>被出租车辆列表</h1>

    <table class="table table-hover">
        <thead>
        <tr>
            <th>编号</th>
            <th>车牌</th>
            <th>类型</th>
            <th>颜色</th>
            <th>租借金</th>
            <th>时间</th>
        </tr>
        </thead>
        <%--    重点↓--%>
        <tbody>
        <c:forEach var="sk" items="${cars}">
            <tr>
                <td>${sk.car_id}</td>
                <td>${sk.num}</td>
                <td>${sk.type}</td>
                <td>${sk.color}</td>
                <td>${sk.price}</td>
                <td>${sk.time}</td>
                <td><a style="text-decoration:none;" href="<%=request.getContextPath() %>/delecarbyid?id=${sk.car_id}">下架</a></td>
                <td><a style="text-decoration:none;" href="<%=request.getContextPath() %>/addorder?id=${sk.car_id}">租借</a></td>

            </tr>

        </c:forEach>
        </tbody>
    </table>

</div>

</body>
</html>