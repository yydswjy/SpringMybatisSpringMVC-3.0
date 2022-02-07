<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>success page</title>
</head>
<body style="background-color: rgba(140, 199, 223, 0.582);">
<div style="text-align: center;margin-top: 250px;">
    <h1>新闻列表</h1>

    <table class="table table-hover">
        <thead>
        <tr>
            <th>标题</th>
            <th>时间</th>
            <th>发布人</th>
            <th>简介</th>
            <th>详情</th>
            <th>操作</th>
        </tr>
        </thead>
        <%--    重点↓--%>
        <tbody>
        <c:forEach var="sk" items="${good}">
            <tr>
                <td>${sk.name}</td>
                <td>${sk.time}</td>
                <td>${sk.poster}</td>
                <td>${sk.imfor}</td>
                <td>${sk.more}</td>
                <td><a style="text-decoration:none;" href="<%=request.getContextPath() %>/deletebyid?id=${sk.id}">删除</a></td>
                <td><a style="text-decoration:none;" href="<%=request.getContextPath() %>/updatebyid?id=${sk.id}">修改</a></td>

            </tr>

        </c:forEach>
        </tbody>
    </table>

</div>

</body>
</html>