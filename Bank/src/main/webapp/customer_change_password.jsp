<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Change Password</title>
    <style>
        :root {
            --background-color: #e6f7ff; /* Light blue background */
            --container-bg-color: #ffffff;
            --primary-color: #ff7f50; /* Coral for primary color */
            --button-bg-color: #ff7f50; /* Coral button color */
            --button-hover-bg-color: #ff6347; /* Tomato color on hover */
            --font-family: 'Arial', sans-serif;
            --font-size: 16px;
            --border-radius: 8px;
            --button-border-radius: 4px;
            --box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            --padding: 20px;
            --margin: 10px;
            --transition-duration: 0.3s;
            --input-border-color: #ccc;
            --error-color: #d9534f; /* Red error message color */
        }

        body {
            font-family: var(--font-family);
            background-color: var(--background-color);
            margin: 0;
            padding: 20px;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            text-align: center;
        }

        .container {
            background-color: var(--container-bg-color);
            padding: var(--padding);
            border-radius: var(--border-radius);
            box-shadow: var(--box-shadow);
            max-width: 400px;
            margin: 0 auto;
            transition: box-shadow var(--transition-duration), transform var(--transition-duration);
        }

        .container:hover {
            box-shadow: 0 6px 8px rgba(0, 0, 0, 0.15);
            transform: scale(1.02);
        }

        h1 {
            color: var(--primary-color);
            font-size: 1.8em;
            margin-bottom: 20px;
            transition: color var(--transition-duration);
        }

        h1:hover {
            color: var(--button-hover-bg-color);
        }

        form {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border: 1px solid var(--input-border-color);
            border-radius: var(--border-radius);
            box-sizing: border-box;
        }

        button {
            padding: 12px;
            background-color: var(--button-bg-color);
            color: white;
            border: none;
            border-radius: var(--button-border-radius);
            cursor: pointer;
            width: 100%;
            font-size: var(--font-size);
            transition: background-color var(--transition-duration) ease, transform var(--transition-duration);
        }

        button:hover {
            background-color: var(--button-hover-bg-color);
            transform: scale(1.05);
        }

        .error {
            color: var(--error-color);
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Change Password</h1>
        <form action="CustomerChangePasswordServlet" method="post">
            <input type="text" name="accountNumber" placeholder="Account Number" required>
            <input type="password" name="oldPassword" placeholder="Current Password" required>
            <input type="password" name="newPassword" placeholder="New Password" required>
            <button type="submit">Change Password</button>
        </form>
        <% if (request.getParameter("error") != null) { %>
            <div class="error"><%= request.getParameter("error") %></div>
        <% } %>
    </div>
</body>
</html>
