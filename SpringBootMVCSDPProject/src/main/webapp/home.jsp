<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome - Student Extracurricular Activities</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            background: linear-gradient(to right, #6a11cb, #2575fc); /* Stylish gradient background */
            color: white;
        }

        .welcome-message {
            text-align: center;
            padding: 50px;
            background-color: rgba(0, 0, 0, 0.5); /* Semi-transparent background */
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
            max-width: 500px;
            width: 100%;
        }

        .welcome-message h1 {
            font-size: 3em;
            margin: 0;
        }

        .welcome-message p {
            font-size: 1.2em;
            margin-top: 10px;
        }

        .button-container {
            margin-top: 30px;
        }

        .nav-button {
            background-color: #28a745; /* Green color for button */
            color: white;
            font-size: 1.2em;
            padding: 15px 30px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
            display: inline-block;
            margin: 10px;
            transition: background-color 0.3s;
        }

        .nav-button:hover {
            background-color: #218838;
        }

        .nav-button:active {
            background-color: #1e7e34;
        }
    </style>
</head>
<body>
    <div class="welcome-message">
        <h1>Welcome to Student Extracurricular Activities!</h1>
        <p>We are thrilled to have you with us. Explore and engage in various activities!</p>

        <!-- Navigation Buttons -->
        <div class="button-container">
            <a href="activities.jsp" class="nav-button">View Activities</a>
            <a href="events.jsp" class="nav-button">Upcoming Events</a>
            <a href="profile.jsp" class="nav-button">My Profile</a>
        </div>
    </div>
</body>
</html>
