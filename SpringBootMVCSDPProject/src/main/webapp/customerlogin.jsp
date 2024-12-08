<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Login</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f9;
        margin: 0;
        padding: 0;
        color: #333;
    }
    .navbar {
        background-color: #2c3e50;
        overflow: hidden;
        padding: 10px 20px;
    }
    .navbar a {
        color: white;
        text-decoration: none;
        padding: 10px 20px;
        display: inline-block;
    }
    .navbar a:hover {
        background-color: #34495e;
        border-radius: 5px;
    }
    h3 {
        text-align: center;
        color: #2c3e50;
        margin-top: 30px;
    }
    h4 {
        text-align: center;
    }
    .container {
        max-width: 400px;
        margin: 40px auto;
        padding: 20px;
        background-color: #ffffff;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        border: 1px solid #dcdcdc;
    }
    form {
        display: flex;
        flex-direction: column;
    }
    label {
        font-weight: bold;
        margin-bottom: 5px;
        color: #2c3e50;
    }
    input[type="text"],
    input[type="password"] {
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 14px;
        background-color: #f9f9f9;
    }
    input[type="text"]:focus,
    input[type="password"]:focus {
        border-color: #2c3e50;
        outline: none;
        background-color: #fff;
    }
    input[type="submit"],
    input[type="reset"] {
        padding: 10px;
        font-size: 14px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        color: white;
    }
    input[type="submit"] {
        background-color: #27ae60;
        margin-right: 10px;
    }
    input[type="reset"] {
        background-color: #e74c3c;
    }
    input[type="submit"]:hover {
        background-color: #229954;
    }
    input[type="reset"]:hover {
        background-color: #c0392b;
    }
    .btn-group {
        display: flex;
        justify-content: space-between;
    }
</style>
</head>
<body>
<%@include file="mainnavbar.jsp" %>

<h4 style="color:#e74c3c;">
    <c:out value="${message}"></c:out>
</h4>

<h3>Student Login Form</h3>
<div class="container">
    <form method="post" action="checkcustomerlogin">
        <label for="cemail">Enter Email</label>
        <input type="text" id="cemail" name="cemail" required />

        <label for="cpwd">Enter Password</label>
        <input type="password" id="cpwd" name="cpwd" required />

        <div class="btn-group">
            <input type="submit" value="Login" />
            <input type="reset" value="Clear" />
        </div>
    </form>
</div>
</body>
</html>
