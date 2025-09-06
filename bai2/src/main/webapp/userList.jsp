<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Danh sách tài khoản</title>
</head>
<body>
<h2>Danh sách tài khoản đã đăng ký</h2>
<table border="1">
    <thead>
    <tr>
        <th>Tên đầy đủ</th>
        <th>Email</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="user" items="${users}">
        <tr>
            <td>${user.firstName} ${user.lastName}</td>
            <td>${user.email}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
