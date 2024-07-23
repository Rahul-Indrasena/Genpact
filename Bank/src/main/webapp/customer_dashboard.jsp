<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Customer Dashboard</title>
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
            --button-border-radius: 5px;
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
            text-align: center;
        }

        .container {
            background-color: var(--container-bg-color);
            padding: var(--padding);
            border-radius: var(--border-radius);
            box-shadow: var(--box-shadow);
            max-width: 600px;
            margin: 20px auto;
            transition: box-shadow var(--transition-duration), transform var(--transition-duration);
        }

        .container:hover {
            box-shadow: 0 6px 8px rgba(0, 0, 0, 0.15);
            transform: scale(1.02);
        }

        h1 {
            color: var(--primary-color);
            margin-bottom: 20px;
            font-size: 1.8em;
            transition: color var(--transition-duration);
        }

        h1:hover {
            color: var(--button-hover-bg-color);
        }

        .dashboard-link {
            display: block;
            margin-bottom: 10px;
            padding: 12px;
            text-decoration: none;
            background-color: var(--button-bg-color);
            color: white;
            border-radius: var(--button-border-radius);
            transition: background-color var(--transition-duration), transform var(--transition-duration);
        }

        .dashboard-link:hover {
            background-color: var(--button-hover-bg-color);
            transform: scale(1.05);
        }

        form {
            margin-top: 20px;
        }

        form input[type="submit"] {
            background-color: var(--button-bg-color);
            color: white;
            padding: 12px 20px;
            border: none;
            cursor: pointer;
            border-radius: var(--button-border-radius);
            font-size: var(--font-size);
            transition: background-color var(--transition-duration), transform var(--transition-duration);
        }

        form input[type="submit"]:hover {
            background-color: var(--button-hover-bg-color);
            transform: scale(1.05);
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Welcome to Your Dashboard</h1>
        <a href="ViewBalanceServlet" class="dashboard-link">View Balance</a>
        <a href="ViewTransactionsServlet" class="dashboard-link">View Transactions</a>
        <a href="WithdrawServlet" class="dashboard-link">Withdraw Money</a>
        <a href="DepositServlet" class="dashboard-link">Deposit Money</a>
        <a href="delete_account.jsp" class="dashboard-link">Delete Account</a>
        <form action="customer_login.jsp">
            <input type="submit" value="Logout">
        </form>
    </div>
</body>
</html>
