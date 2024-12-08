<%@page import="com.klef.jfsd.springboot.model.Customer" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Customer c = (Customer)session.getAttribute("customer");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Customer Home</title>
    <style>
        /* General Styling */
        body {
            font-family: 'Roboto', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f9f9fb;
            color: #333;
        }

        /* Navbar Styling */
        .navbar {
            background: linear-gradient(45deg, #6a11cb, #2575fc);
            padding: 15px;
            text-align: center;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
        }

        .navbar a {
            color: #ffffff;
            text-decoration: none;
            padding: 10px 15px;
            font-size: 18px;
            font-weight: bold;
            border-radius: 5px;
        }

        .navbar a:hover {
            background: rgba(255, 255, 255, 0.2);
            transition: all 0.3s ease-in-out;
        }

        /* Centered Content */
        .container {
            max-width: 600px;
            margin: 50px auto;
            background: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            padding: 30px;
        }

        h3 {
            text-align: center;
            color: #2c3e50;
            margin-bottom: 20px;
            font-size: 24px;
            text-transform: uppercase;
        }

        .profile-info {
            font-size: 16px;
            line-height: 1.8;
        }

        .profile-info span {
            font-weight: bold;
            color: #2575fc;
        }

        /* Buttons and Links */
        .btn {
            display: inline-block;
            padding: 10px 20px;
            margin-top: 10px;
            font-size: 16px;
            font-weight: bold;
            color: #ffffff;
            background: #2575fc;
            text-decoration: none;
            border-radius: 5px;
            text-align: center;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: all 0.3s ease-in-out;
        }

        .btn:hover {
            background: #1a5cdb;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <div class="navbar">
        <%@include file="customernavbar.jsp" %>
    </div>

    <!-- Profile Container -->
    <div class="container">
        <h3>My Profile</h3>
        <div class="profile-info">
            <p><span>ID:</span> <%=c.getId()%></p>
            <p><span>Name:</span> <%=c.getName()%></p>
            <p><span>Gender:</span> <%=c.getGender()%></p>
            <p><span>Date of Birth:</span> <%=c.getDateofbirth()%></p>
            <p><span>Email:</span> <%=c.getEmail()%></p>
            <p><span>Location:</span> <%=c.getLocation()%></p>
            <p><span>Contact:</span> <%=c.getContact()%></p>
        </div>
        <div style="text-align: center;">
            <a href="editprofile" class="btn">Edit Profile</a>
            <a href="logout" class="btn">Logout</a>
        </div>
    </div>
</body>
</html>
