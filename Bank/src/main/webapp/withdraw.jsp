<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Withdraw</title>
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
            max-width: 400px;
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
            margin-bottom: var(--margin);
        }

        form {
            margin-top: var(--margin);
            text-align: center;
        }

        label {
            display: block;
            margin-bottom: 8px;
        }

        input[type="number"] {
            width: 100%;
            padding: 8px;
            margin-bottom: var(--margin);
            border: 1px solid #ccc;
            border-radius: var(--border-radius);
            box-sizing: border-box;
        }

        button {
            background-color: var(--primary-color); /* Coral */
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: var(--border-radius);
            cursor: pointer;
            font-size: var(--font-size);
            transition: background-color var(--transition-duration);
        }

        button:hover {
            background-color: var(--button-hover-bg-color); /* Tomato */
        }

        .message {
            margin-top: var(--margin);
            color: #d9534f; /* Red error message color */
            text-align: center;
        }

        a {
            display: block;
            text-align: center;
            margin-top: var(--margin);
            color: var(--primary-color); /* Coral */
            text-decoration: none;
            transition: color var(--transition-duration);
        }

        a:hover {
            color: var(--button-hover-bg-color); /* Tomato */
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Withdraw</h1>
        <form action="WithdrawServlet" method="post">
            <label for="amount">Amount to Withdraw:</label>
            <input type="number" id="amount" name="amount" required>
            <button type="submit">Withdraw</button>
        </form>
        <div class="message">
            <%= request.getAttribute("message") != null ? request.getAttribute("message") : "" %>
        </div>
        <a href="customer_dashboard.jsp">Back to Dashboard</a>
    </div>
</body>
</html>
