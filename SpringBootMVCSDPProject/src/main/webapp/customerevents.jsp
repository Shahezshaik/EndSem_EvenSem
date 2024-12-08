<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Events Registration</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .container {
            width: 50%;
            margin: auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h1 {
            text-align: center;
            color: #333;
        }
        form {
            display: flex;
            flex-direction: column;
        }
        label {
            margin-top: 10px;
            font-weight: bold;
        }
        input, select, button {
            margin-top: 5px;
            padding: 10px;
            font-size: 16px;
        }
        button {
            margin-top: 20px;
            background-color: #28a745;
            color: white;
            border: none;
            cursor: pointer;
        }
        button:hover {
            background-color: #218838;
        }

        /* Success Popup */
        .success-popup {
            position: absolute;
            top: 120px;
            left: 50%;
            transform: translateX(-50%);
            background-color: #4caf50;
            color: #fff;
            padding: 15px 30px;
            border-radius: 8px;
            font-size: 16px;
            display: none;
            text-align: center;
            z-index: 1000;
        }

        /* Register Button Styling */
        .register-button {
            display: inline-block;
            padding: 12px 30px;
            background-color: #007BFF;
            color: white;
            font-size: 16px;
            text-align: center;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 20px;
        }

        .register-button:hover {
            background-color: #0056b3;
        }

        /* Link to My Events and Awards */
        .my-events-link {
            text-align: center;
            margin-top: 20px;
        }

        .my-events-link a {
            color: #007BFF;
            text-decoration: none;
            font-size: 16px;
        }

        .my-events-link a:hover {
            text-decoration: underline;
        }
    </style>
    <script>
        // Function to show the success message popup
        function showSuccessPopup() {
            document.getElementById("successPopup").style.display = "block";
            setTimeout(function() {
                document.getElementById("successPopup").style.display = "none";
            }, 3000);
        }
    </script>
</head>
<body>
<%@include file="customernavbar.jsp" %>
    <div class="container">
        <h1>Events Registration</h1>
        <form id="registrationForm" method="post" action="events.jsp">
            <label for="studentName">Student Name:</label>
            <input type="text" id="studentName" name="studentName" required>
            
            <label for="studentId">Student ID:</label>
            <input type="text" id="studentId" name="studentId" required>
            
            <label for="activity">Select Activity:</label>
            <select id="activity" name="activity" required>
                <option value="">--Choose an Activity--</option>
                <option value="Dancing">Dancing</option>
                <option value="Singing">Singing</option>
                <option value="Sports">Sports</option>
            </select>
            
            <!-- Register Button -->
            <button type="button" class="register-button" onclick="showSuccessPopup()">Register</button>
        </form>

        <!-- Success Popup Message -->
        <div id="successPopup" class="success-popup">
            Successfully Registered!
        </div>

        <!-- Link to My Events and My Awards Page -->
        <div class="my-events-link">
            <a href="myEventsAndAwards.jsp">View My Events and Awards</a>
        </div>
    </div>
</body>
</html>
