<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Customer Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 50px;
            text-align: center;
            background-color: #eef2f7; /* Light blue-gray background */
        }
        h2 {
            color: #ff7f50; /* Coral color for header */
        }
        .container {
            max-width: 300px;
            margin: auto;
            background-color: #ffffff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 4px 8px rgba(0,0,0,0.2); /* Slightly more pronounced shadow */
            transition: box-shadow 0.3s, transform 0.3s;
        }
        .container:hover {
            box-shadow: 0px 6px 12px rgba(0,0,0,0.3); /* Darker shadow on hover */
            transform: scale(1.02); /* Slight scale effect on hover */
        }
        input[type=text], input[type=password] {
            width: 100%;
            padding: 10px;
            margin: 5px 0 20px 0;
            display: inline-block;
            border: 1px solid #b0bec5; /* Light blue-gray border */
            box-sizing: border-box;
            border-radius: 4px;
        }
        button {
            background-color: #ff7f50; /* Coral button background */
            color: white;
            padding: 10px 20px;
            margin: 10px 0;
            border: none;
            cursor: pointer;
            width: 100%;
            border-radius: 4px;
            transition: background-color 0.3s;
        }
        button:hover {
            background-color: #ff6347; /* Tomato color on hover */
        }
        .register-link {
            margin-top: 20px;
        }
        .login-link {
            display: block;
            margin-top: 20px;
            text-decoration: none;
            color: #ff7f50; /* Coral color for link */
            transition: color 0.3s;
        }
        .login-link:hover {
            color: #ff6347; /* Tomato color on hover */
        }
        .change-password-link {
            display: block;
            margin-top: 20px;
            text-align: center;
            color: #ff7f50; /* Coral color for link */
            text-decoration: none;
            transition: color 0.3s;
        }
        .change-password-link:hover {
            color: #ff6347; /* Tomato color on hover */
        }
        p {
            color: black;
            text-decoration: none;
        }
        p a {
            color: #ff7f50; /* Coral color for link */
            text-decoration: none;
            transition: color 0.3s;
        }
        p a:hover {
            color: #ff6347; /* Tomato color on hover */
        }
    </style>
</head>
<body>

<h2>Customer Login</h2>

<div class="container">
    <form action="customerLogin" method="post">
        <label for="accountNo"><b>Account Number</b></label>
        <input type="text" placeholder="Enter Account Number" name="accountNo" required>

        <label for="password"><b>Password</b></label>
        <input type="password" placeholder="Enter Password" name="password" required>

        <button type="submit">Login</button>
        <a href="customer_change_password.jsp" class="change-password-link">Change Password</a>
        <p>New Customer? <a href="customer_registration.jsp">Register Here</a></p>
        <a class="login-link" href="index.jsp">Back to Choose</a>
    </form>
</div>

</body>
</html>
