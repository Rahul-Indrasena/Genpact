<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>View Balance</title>
    <style>
        :root {
            --background-color: #eef2f7; /* Light blue-gray */
            --container-bg-color: #ffffff;
            --primary-color: #ff7f50; /* Coral */
            --button-hover-bg-color: #ff6347; /* Tomato */
            --font-family: 'Roboto', sans-serif;
            --font-size: 16px;
            --border-radius: 8px;
            --box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            --padding: 20px;
            --margin: 10px;
            --transition-duration: 0.3s;
        }

        body {
            font-family: var(--font-family);
            background-color: var(--background-color);
            margin: 0;
            padding: var(--padding);
        }

        .container {
            background-color: var(--container-bg-color);
            padding: var(--padding);
            border-radius: var(--border-radius);
            box-shadow: var(--box-shadow);
            max-width: 600px;
            margin: var(--margin) auto;
            transition: box-shadow var(--transition-duration), transform var(--transition-duration);
        }

        .container:hover {
            box-shadow: 0 8px 12px rgba(0, 0, 0, 0.2); /* Increase shadow on hover */
            transform: scale(1.02); /* Slightly scale up on hover */
        }

        h1 {
            color: var(--primary-color); /* Coral */
            text-align: center;
            margin-bottom: 20px;
        }

        .balance {
            margin-top: 20px;
            font-size: 24px;
            text-align: center;
        }

        a {
            display: block;
            text-align: center;
            margin-top: 20px;
            color: var(--primary-color); /* Coral */
            text-decoration: none;
        }

        a:hover {
            color: black;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Your Balance</h1>
        <div class="balance">
            <%= "Balance: Rs-" + request.getAttribute("balance") %>
        </div>
        <a href="customer_dashboard.jsp">Back to Dashboard</a>
    </div>
</body>
</html>
