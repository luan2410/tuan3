<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Thông Tin Đăng Ký</title>
    <style>
        body { font-family: sans-serif; background-color: #e0f7fa; }
        .container { max-width: 600px; margin: 40px auto; padding: 20px; background-color: #ffffff; border-radius: 8px; }
        h2 { text-align: center; }
        p { line-height: 1.6; }
        strong { min-width: 150px; display: inline-block; }
    </style>
</head>
<body>

<jsp:useBean id="student" class="com.example.model.Student" scope="request" />

<div class="container">
    <h2>Thông Tin Đăng Ký Thành Công</h2>
    <p>
        <strong>Họ và tên:</strong>
        <jsp:getProperty name="student" property="firstName" />
        <jsp:getProperty name="student" property="lastName" />
    </p>
    <p>
        <strong>Ngày sinh:</strong>
        <jsp:getProperty name="student" property="dobDay" /> /
        <jsp:getProperty name="student" property="dobMonth" /> /
        <jsp:getProperty name="student" property="dobYear" />
    </p>
    <p>
        <strong>Email:</strong>
        <jsp:getProperty name="student" property="email" />
    </p>
    <p>
        <strong>Số điện thoại:</strong>
        <jsp:getProperty name="student" property="mobileNumber" />
    </p>
    <p>
        <strong>Giới tính:</strong>
        <jsp:getProperty name="student" property="gender" />
    </p>
    <p>
        <strong>Địa chỉ:</strong>
        <jsp:getProperty name="student" property="address" />
    </p>
    <p>
        <strong>Sở thích:</strong>
        <jsp:getProperty name="student" property="hobbiesAsString" />
    </p>
    <p>
        <strong>Khóa học đăng ký:</strong>
        <jsp:getProperty name="student" property="course" />
    </p>
</div>
</body>
</html>