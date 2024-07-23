<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Deposit Success</title>
    <style>
        :root {
            --background-color: #eef2f7; /* Light blue-gray */
            --container-bg-color: #ffffff;
            --primary-color: #ff7f50; /* Coral */
            --link-color: #ff7f50; /* Coral for link */
            --link-hover-color: #ff6347; /* Tomato for link hover */
            --font-family: 'Arial', sans-serif;
            --font-size: 18px;
            --border-radius: 8px;
            --box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            --padding: 20px;
            --margin-top: 20px;
        }

        body {
            font-family: var(--font-family);
            background-color: var(--background-color);
            margin: 0;
            padding: var(--padding);
            text-align: center;
        }

        .container {
            background-color: var(--container-bg-color);
            padding: var(--padding);
            border-radius: var(--border-radius);
            box-shadow: var(--box-shadow);
            max-width: 600px;
            margin: var(--margin-top) auto;
        }

        h1 {
            color: var(--primary-color); /* Coral color for header */
        }

        .message {
            margin-top: var(--margin-top);
            color: black;
        }

        a {
            display: inline-block;
            margin-top: var(--margin-top);
            text-decoration: none;
            color: var(--link-color); /* Coral color for link */
            font-size: var(--font-size);
        }

        a:hover {
            color: var(--link-hover-color); /* Tomato color for link hover */
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Deposit Successful</h1>
        <div class="message">
            <p>Deposit successful. Your new balance is: <%= request.getAttribute("newBalance") %></p>
        </div>
        <a href="customer_dashboard.jsp">Back to Dashboard</a>
    </div>
</body>
</html>
