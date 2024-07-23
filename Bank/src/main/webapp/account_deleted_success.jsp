<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Account Deleted</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #cce7ff, #e0f7ff); /* Light blue gradient */
            margin: 0;
            padding: 20px;
        }
        .container {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
            max-width: 400px;
            margin: 20px auto;
        }
        h1 {
            color: #ff6347; /* Tomato color for header */
            text-align: center;
            margin-bottom: 15px;
        }
        p {
            margin: 15px 0;
            text-align: center;
            color: #333; /* Darker text color */
        }
        .button {
            display: block;
            margin: 20px auto;
            padding: 10px 20px;
            text-decoration: none;
            background-color: #32cd32; /* LimeGreen button color */
            color: white;
            border-radius: 5px;
            text-align: center;
            transition: background-color 0.3s;
        }
        .button:hover {
            background-color: #228b22; /* Darker shade of green on hover */
        }
    </style>
</head>
<body>
    <div class="container">
    	<h1>Account Deleted Successfully</h1>
        <p>Your account has been deleted. Thank you for using our service.</p>
        <a href="index.jsp" class="button">Go to Home</a>
    </div>
</body>
</html>
