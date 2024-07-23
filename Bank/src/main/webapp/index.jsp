<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Banking Application</title>
    <style>
        :root {
            --background-color: #eef2f7; /* Light blue-gray */
            --container-bg-color: #ffffff;
            --primary-color: #ff7f50; /* Coral */
            --button-bg-color: #ff7f50; /* Coral */
            --button-hover-bg-color: #ff6347; /* Tomato */
            --font-family: 'Roboto', sans-serif;
            --font-size: 16px;
            --border-radius: 8px;
            --button-border-radius: 4px;
            --box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            --padding: 20px;
            --margin: 10px;
            --transition-duration: 0.3s;
        }

        body {
            font-family: var(--font-family);
            background-color: var(--background-color);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .login-container {
            background-color: var(--container-bg-color);
            padding: var(--padding) var(--padding) 40px var(--padding);
            border-radius: var(--border-radius);
            box-shadow: var(--box-shadow);
            text-align: center;
            max-width: 400px;
            width: 100%;
            transition: background-color var(--transition-duration); /* Add transition for hover effect */
        }

        .login-container:hover {
            background-color: #e0e9f0; /* Slightly darker shade for hover effect */
        }

        h1 {
            color: var(--primary-color);
            font-size: 1.5em;
            margin-bottom: 20px;
        }

        .login-button {
            display: inline-block;
            padding: 10px 20px;
            margin: var(--margin);
            color: white;
            background-color: var(--button-bg-color);
            border: none;
            border-radius: var(--button-border-radius);
            text-decoration: none;
            font-size: var(--font-size);
            cursor: pointer;
            transition: background-color var(--transition-duration) ease;
        }

        .login-button:hover {
            background-color: var(--button-hover-bg-color);
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h1>Welcome to the Banking Application</h1>
        <a href="customer_login.jsp" class="login-button">Customer Login</a>
        <a href="admin_login.jsp" class="login-button">Admin Login</a>
    </div>
</body>
</html>
