<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, com.Bank.dao.DatabaseConnection" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>View Customers</title>
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
            max-width: 1200px;
            margin: var(--margin) auto;
            transition: box-shadow var(--transition-duration), transform var(--transition-duration);
        }

        .container:hover {
            box-shadow: 0 8px 12px rgba(0, 0, 0, 0.2); /* Increase shadow on hover */
            transform: scale(1.02); /* Slightly scale up on hover */
        }

        h1, h2 {
            text-align: center;
            color: var(--primary-color); /* Coral */
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
            background-color: var(--primary-color); /* Coral */
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
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
        <h1>All Customer Details</h1>
        <table>
            <thead>
                <tr>
                    <th>Account No</th>
                    <th>Full Name</th>
                    <th>Address</th>
                    <th>Mobile No</th>
                    <th>Email ID</th>
                    <th>Account Type</th>
                    <th>Date of Birth</th>
                    <th>ID Proof</th>
                </tr>
            </thead>
            <tbody>
                <%
                    Connection conn = null;
                    PreparedStatement ps = null;
                    ResultSet rs = null;
                    try {
                        DatabaseConnection db = new DatabaseConnection();
                        conn = db.getConnection();
                        String sql = "SELECT * FROM customers";
                        ps = conn.prepareStatement(sql);
                        rs = ps.executeQuery(); // Updated from db.executeQuery(ps) to ps.executeQuery()
                        while (rs.next()) {
                            int accountNo = rs.getInt("account_no");
                            String fullName = rs.getString("full_name");
                            String address = rs.getString("address");
                            String mobileNo = rs.getString("mobile_no");
                            String emailId = rs.getString("email");
                            String accountType = rs.getString("account_type");
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
                    <td><%= dob %></td>
                    <td><%= idProof %></td>
                </tr>
                <%
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    } finally {
                        try {
                            if (rs != null) rs.close();
                            if (ps != null) ps.close();
                            if (conn != null) conn.close();
                        } catch (SQLException e) {
                            e.printStackTrace();
                        }
                    }
                %>
            </tbody>
        </table>
        <a href="admin_dashboard.jsp">Back to Dashboard</a>
    </div>
</body>
</html>
