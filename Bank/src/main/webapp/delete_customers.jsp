<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, com.Bank.dao.DatabaseConnection" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Delete Customer</title>
    <style>
        :root {
            --background-color: #eef2f7; /* Light blue-gray */
            --container-bg-color: #ffffff;
            --primary-color: #ff7f50; /* Coral */
            --delete-color: #ff6347; /* Tomato */
            --delete-hover-color: #dc143c; /* Darker tomato */
            --font-family: 'Arial', sans-serif;
            --font-size: 16px;
            --border-radius: 8px;
            --box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            --padding: 20px;
            --margin: 20px auto;
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
            max-width: 1200px;
            margin: var(--margin);
        }

        h1 {
            color: var(--primary-color); /* Coral color for header */
            text-align: center;
            margin-bottom: var(--margin);
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin: var(--margin) 0;
        }

        table, th, td {
            border: 1px solid #ddd;
        }

        th, td {
            padding: 12px;
            text-align: left;
        }

        th {
            background-color: var(--primary-color); /* Coral color for table header */
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9; /* Light gray for alternate rows */
        }

        .delete-button {
            background-color: var(--delete-color); /* Tomato color for delete button */
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: var(--border-radius);
            cursor: pointer;
            border: none;
            transition: background-color var(--transition-duration);
        }

        .delete-button:hover {
            background-color: var(--delete-hover-color); /* Darker tomato color on hover */
        }

        .back-button {
            padding: 10px 20px;
            background-color: var(--primary-color); /* Coral color for back button */
            color: white;
            text-decoration: none;
            border-radius: var(--border-radius);
            display: inline-block;
            transition: background-color var(--transition-duration);
            margin-top: 20px;
            text-align: center;
        }

        .back-button:hover {
            background-color: #e67e22; /* Slightly darker coral for hover */
        }

        a {
            display: block;
            text-align: center;
            margin-top: 20px;
            color: var(--primary-color); /* Coral color for link */
            text-decoration: none;
        }

        a:hover {
            color: #ff6347; /* Tomato color on hover */
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Delete Customer</h1>
        <table>
            <thead>
                <tr>
                    <th>Account Number</th>
                    <th>Full Name</th>
                    <th>Address</th>
                    <th>Mobile No</th>
                    <th>Email ID</th>
                    <th>Account Type</th>
                    <th>Initial Balance</th>
                    <th>Date of Birth</th>
                    <th>ID Proof</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <% 
                    Connection conn = null;
                    Statement stmt = null;
                    ResultSet rs = null;

                    try {
                        DatabaseConnection db = new DatabaseConnection();
                        conn = db.getConnection();
                        String sql = "SELECT * FROM customers";
                        stmt = conn.createStatement();
                        rs = stmt.executeQuery(sql);

                        while (rs.next()) {
                            String accountNo = rs.getString("account_no");
                            String fullName = rs.getString("full_name");
                            String address = rs.getString("address");
                            String mobileNo = rs.getString("mobile_no");
                            String emailId = rs.getString("email");
                            String accountType = rs.getString("account_type");
                            double initialBalance = rs.getDouble("balance");
                            String dob = rs.getString("date_of_birth");
                            String idProof = rs.getString("id_proof");
                %>
                <tr>
                    <td><%= accountNo %></td>
                    <td><%= fullName %></td>
                    <td><%= address %></td>
                    <td><%= mobileNo %></td>
                    <td><%= emailId %></td>
                    <td><%= accountType %></td>
                    <td><%= initialBalance %></td>
                    <td><%= dob %></td>
                    <td><%= idProof %></td>
                    <td>
                        <form action="deleteCustomer" method="post">
                            <input type="hidden" name="accountNo" value="<%= accountNo %>">
                            <button type="submit" class="delete-button">Delete</button>
                        </form>
                    </td>
                </tr>
                <% 
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    } finally {
                        try {
                            if (rs != null) rs.close();
                            if (stmt != null) stmt.close();
                            if (conn != null) conn.close();
                        } catch (SQLException e) {
                            e.printStackTrace();
                        }
                    }
                %>
            </tbody>
        </table>
        <a href="admin_dashboard.jsp" class="back-button">Back to Dashboard</a>
    </div>
</body>
</html>
