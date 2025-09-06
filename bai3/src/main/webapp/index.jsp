<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ResourceBundle" %>
<%@ page import="java.util.Locale" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
</head>
<body>
<%
    // Lấy ngôn ngữ từ session, mặc định là Tiếng Việt
    String lang = (String) session.getAttribute("lang");
    if (lang == null) {
        lang = "vi";
        session.setAttribute("lang", lang);
    }

    // Tải các tài nguyên ngôn ngữ tương ứng
    ResourceBundle bundle = ResourceBundle.getBundle("messages", new Locale(lang));
%>

<div style="border: 1px solid #ccc; padding: 15px; width: 400px; margin: 50px auto;">

    <form action="language" method="get">
        <label><%= bundle.getString("label.select_language") %></label>
        <input type="radio" name="lang" value="vi" <%= "vi".equals(lang) ? "checked" : "" %>> <%= bundle.getString("label.vietnamese") %>
        <input type="radio" name="lang" value="en" <%= "en".equals(lang) ? "checked" : "" %>> <%= bundle.getString("label.english") %>
        <input type="submit" value="<%= bundle.getString("button.select") %>">
    </form>

    <hr>

    <form action="#" method="post">
        <label><%= bundle.getString("label.username") %></label>
        <input type="text" name="username"><br><br>

        <label><%= bundle.getString("label.password") %></label>
        <input type="password" name="password"><br><br>

        <input type="submit" value="<%= bundle.getString("button.login") %>">
    </form>
</div>
</body>
</html>