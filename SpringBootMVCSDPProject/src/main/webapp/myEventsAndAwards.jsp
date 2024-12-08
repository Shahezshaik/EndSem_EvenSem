<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>My Events and Awards</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
        }
        .container {
            width: 60%;
            margin: auto;
            padding: 20px;
            background-color: white;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h1 {
            text-align: center;
            color: #333;
        }
        .my-events, .my-awards {
            margin-top: 40px;
        }
        .my-events h2, .my-awards h2 {
            text-align: center;
            color: #333;
        }
        .events-list, .awards-list {
            list-style-type: none;
            padding: 0;
            margin-top: 10px;
        }
        .events-list li, .awards-list li {
            padding: 10px;
            background-color: #f1f1f1;
            margin-bottom: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }
        .events-list li:hover, .awards-list li:hover {
            background-color: #e0e0e0;
        }
    </style>
</head>
<body>
<%@include file="customernavbar.jsp" %>
    <div class="container">
        <h1>My Events and Awards</h1>

        <!-- My Events Section -->
        <div class="my-events">
            <h2>Participated Events</h2>
            <ul class="events-list">
    <li>
        <strong>Event 1: Dancing Competition</strong><br>
        <span>Venue: RND Theatre</span>
    </li>
    <li>
        <strong>Event 2: Singing Contest</strong><br>
        <span>Venue: Rose Hall</span>
    </li>
    <li>
        <strong>Event 3: Sports Meet</strong><br>
        <span>Venue: Cricket Grounds</span>
    </li>
</ul>
            
        </div>

        <!-- My Awards Section -->
        <div class="my-awards">
            <h2>My Awards</h2>
            <ul class="awards-list">
                <li>Award 1: Best Performer in Dancing</li>
                <li>Award 2: Winner of Singing Contest</li>
                <li>Award 3: Runner-Up in Sports Meet</li>
            </ul>
        </div>
    </div>
</body>
</html>
