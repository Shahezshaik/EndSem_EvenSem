<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>
<style>
    /* General body styling */
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f4f4f9;
    }

    /* Navbar styling */
    .navbar {
        background-color: #007BFF;
        padding: 10px 20px;
        color: white;
        font-size: 18px;
        display: flex;
        justify-content: space-between;
        align-items: center;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
    }

    .navbar a {
        color: white;
        text-decoration: none;
        margin: 0 10px;
        font-weight: bold;
    }

    .navbar a:hover {
        text-decoration: underline;
    }

    /* Main content styling */
    .content {
        margin: 50px auto;
        padding: 20px;
        background: white;
        width: 80%;
        max-width: 600px;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        border-radius: 8px;
    }

    .content h1 {
        font-size: 24px;
        text-align: center;
        color: #333;
    }

    .content p {
        font-size: 16px;
        color: #555;
        text-align: center;
    }

    .content .count {
        font-size: 20px;
        font-weight: bold;
        color: #007BFF;
    }

    /* Buttons Styling */
    .button-container {
        text-align: center;
        margin-top: 20px;
    }

    .button-container button {
        background-color: #007BFF;
        color: white;
        font-size: 16px;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        margin: 10px;
    }

    .button-container button:hover {
        background-color: #0056b3;
    }
    
    /* Button Styling */
.btn {
    background-color: #4CAF50; /* Green background */
    color: white; /* White text */
    padding: 12px 20px; /* Some padding */
    text-align: center; /* Center the text */
    text-decoration: none; /* Remove underline */
    display: inline-block; /* Make the link behave like a block */
    border-radius: 5px; /* Rounded corners */
    transition: background-color 0.3s; /* Smooth transition for hover */
}

.btn:hover {
    background-color: #45a049; /* Darker green on hover */
    cursor: pointer; /* Change cursor to pointer */
}

.btn:active {
    background-color: #3e8e41; /* Even darker green when clicked */
}
    
</style>
</head>
<body>

<!-- Including Admin Navbar -->
<%@ include file="adminnavbar.jsp" %>


<div class="content">
    <h1>Welcome to the Admin Dashboard</h1>
    <p>Total Students: <span class="count"><c:out value="${count}"></c:out></span></p>
    <div class="button-container">
        <!-- View All Students Button -->
        
        <form action="viewallcustomers" method="get">
        
            <a href="viewallcustomers" class="btn">View All Students</a>
            
        </form>

        <!-- Logout Button -->
        <form action="logout" method="post">
            <a href="customerlogout" class="btn" >Logout</a>
        </form>
    </div>
</div>

</body>
</html>
