<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Deposit</title>
    <style>
        :root {
            --background-color: #eef2f7; /* Light blue-gray */
            --container-bg-color: #ffffff;
            --primary-color: #ff7f50; /* Coral */
            --button-bg-color: #ff7f50; /* Coral */
            --button-hover-color: #ff6347; /* Tomato */
            --link-color: #ff7f50; /* Coral */
            --link-hover-color: #ff6347; /* Tomato */
            --error-color: #d9534f; /* Red for error message */
            --font-family: 'Arial', sans-serif;
            --font-size: 16px;
            --border-radius: 8px;
            --box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            --padding: 20px;
            --margin: 20px auto;
            --transition-duration: 0.3s;
            --form-gap: 20px; /* Gap between form elements */
            --button-gap: 20px; /* Gap between form button and link */
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
            max-width: 400px;
            margin: var(--margin);
        }

        h1 {
            color: var(--primary-color); /* Coral color for header */
            text-align: center;
            margin-bottom: var(--form-gap);
        }

        form {
            margin-top: var(--form-gap);
            text-align: center;
        }

        label {
            display: block;
            margin-bottom: 8px;
        }

        input[type="number"] {
            width: 100%;
            padding: 8px;
            margin-bottom: var(--form-gap); /* Gap between input and button */
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        button {
            background-color: var(--button-bg-color); /* Coral color for button */
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: var(--font-size);
            transition: background-color var(--transition-duration);
            margin-bottom: var(--button-gap); /* Gap between button and link */
        }

        button:hover {
            background-color: var(--button-hover-color); /* Tomato color on hover */
        }

        .message {
            margin-top: var(--form-gap);
            color: var(--error-color); /* Red color for error message */
            text-align: center;
        }

        a {
            display: block;
            text-align: center;
            margin-top: var(--button-gap); /* Gap between button and link */
            color: var(--link-color); /* Coral color for link */
            text-decoration: none;
            font-size: var(--font-size);
        }

        a:hover {
            color: var(--link-hover-color); /* Tomato color on hover */
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Deposit</h1>
        <form action="DepositServlet" method="post">
            <label for="amount">Amount to Deposit:</label>
            <input type="number" id="amount" name="amount" required>
            <button type="submit" class="submit-button">Deposit</button>
        </form>
        <div class="message">
            <%= request.getAttribute("message") != null ? request.getAttribute("message") : "" %>
        </div>
        <a href="customer_dashboard.jsp">Back to Dashboard</a>
    </div>
</body>
</html>
