<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Form Đăng Ký Khóa Học</title>
    <style>
        body { font-family: sans-serif; background-color: #e0f7fa; }
        .container { max-width: 600px; margin: 40px auto; padding: 20px; background-color: #ffffff; border-radius: 8px; }
        .form-group { margin-bottom: 15px; }
        label { display: block; margin-bottom: 5px; }
        input[type="text"], input[type="email"], select, textarea { width: 100%; padding: 8px; box-sizing: border-box; }
        input[type="submit"], input[type="reset"] { padding: 10px 15px; border: none; border-radius: 4px; cursor: pointer; }
        input[type="submit"] { background-color: #007bff; color: white; }
        input[type="reset"] { background-color: #6c757d; color: white; }
    </style>
</head>
<body>
<div class="container">
    <h2>Form Đăng Ký Khóa Học</h2>
    <form action="registration-form" name="formDangKy" method="POST">
        <div class="form-group">
            <label>First name:</label>
            <input type="text" name="firstName" required>
        </div>
        <div class="form-group">
            <label>Last name:</label>
            <input type="text" name="lastName" required>
        </div>
        <div class="form-group">
            <label>Date of birth:</label>
            <input type="text" name="dobDay" placeholder="Day" size="4">
            <input type="text" name="dobMonth" placeholder="Month" size="4">
            <input type="text" name="dobYear" placeholder="Year" size="6">
        </div>
        <div class="form-group">
            <label>Email:</label>
            <input type="email" name="email" required>
        </div>
        <div class="form-group">
            <label>Mobile number:</label>
            <input type="text" name="mobileNumber" maxlength="10">
        </div>
        <div class="form-group">
            <label>Gender:</label>
            <input type="radio" name="gender" value="Male"> Male
            <input type="radio" name="gender" value="Female"> Female
        </div>
        <div class="form-group">
            <label>Address:</label>
            <textarea name="address" rows="4"></textarea>
        </div>
        <div class="form-group">
            <label>Hobbies:</label>
            <input type="checkbox" name="hobbies" value="Drawing"> Drawing
            <input type="checkbox" name="hobbies" value="Singing"> Singing
            <input type="checkbox" name="hobbies" value="Dancing"> Dancing
            <input type="checkbox" name="hobbies" value="Sketching"> Sketching
        </div>
        <div class="form-group">
            <label>Course applies for:</label>
            <input type="radio" name="course" value="BCA"> BCA
            <input type="radio" name="course" value="B.Com"> B.Com
            <input type="radio" name="course" value="B.Sc"> B.Sc
            <input type="radio" name="course" value="B.A"> B.A
        </div>
        <input type="submit" value="Submit">
        <input type="reset" value="Reset">
    </form>
</div>
</body>
</html>