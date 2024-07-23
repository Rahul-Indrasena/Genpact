<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.Bank.models.Transaction" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>View Transactions</title>
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
            max-width: 800px;
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

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: var(--margin);
        }

        table, th, td {
            border: 1px solid #ddd;
        }

        th, td {
            padding: 12px;
            text-align: left;
        }

        th {
            background-color: var(--primary-color); /* Coral */
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        .order-links {
            margin-top: 10px;
            text-align: center;
        }

        .order-links a {
            text-decoration: none;
            color: var(--primary-color); /* Coral */
            margin-right: 10px;
        }

        .order-links a:hover {
            color: var(--button-hover-bg-color); /* Tomato */
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
        <h1>View Transactions</h1>
        <div class="order-links">
            <a href="ViewTransactionsServlet?order=asc">Sort by Date (Ascending)</a>
            <a href="ViewTransactionsServlet?order=desc">Sort by Date (Descending)</a>
        </div>
        <table>
            <thead>
                <tr>
                    <th>Transaction ID</th>
                    <th>Account No</th>
                    <th>Type</th>
                    <th>Amount</th>
                    <th>Date</th>
                </tr>
            </thead>
            <tbody>
                <%
                    List<Transaction> transactions = (List<Transaction>) request.getAttribute("transactions");
                    if (transactions != null && !transactions.isEmpty()) {
                        for (Transaction transaction : transactions) {
                %>
                <tr>
                    <td><%= transaction.getTransactionId() %></td>
                    <td><%= transaction.getAccountNo() %></td>
                    <td><%= transaction.getType() %></td>
                    <td><%= transaction.getAmount() %></td>
                    <td><%= transaction.getDate() %></td>
                </tr>
                <%
                        }
                    } else {
                %>
                <tr>
                    <td colspan="5">No transactions found</td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>
        <a href="customer_dashboard.jsp">Back to Dashboard</a>
    </div>
</body>
</html>
