<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Đăng ký tài khoản</title>
</head>
<body>
<h2>Form đăng ký tài khoản</h2>
<form action="RegistrationServlet" method="post">
    First Name: <input type="text" name="firstName" required><br>
    Last Name: <input type="text" name="lastName" required><br>
    Your Email: <input type="email" name="email" required><br>
    Re-enter Email: <input type="email" name="reEmail" required><br>
    New Password: <input type="password" name="password" required><br>
    <br>
    Birthday:
    <select name="month">...</select>
    <select name="day">...</select>
    <select name="year">...</select><br>
    <br>
    <input type="radio" name="gender" value="Female"> Female
    <input type="radio" name="gender" value="Male"> Male<br>
    <br>
    <input type="submit" value="Sign Up">
</form>
</body>
</html>
