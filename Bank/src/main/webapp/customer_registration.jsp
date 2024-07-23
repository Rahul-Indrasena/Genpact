<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Customer Registration</title>
    <style>
        :root {
            --background-color: #eef2f7; /* Light blue-gray */
            --container-bg-color: #ffffff;
            --primary-color: #ff7f50; /* Coral */
            --button-bg-color: #ff7f50; /* Coral */
            --button-hover-bg-color: #ff6347; /* Tomato */
            --link-color: #ff7f50; /* Coral */
            --link-hover-color: #ff6347; /* Tomato */
            --border-color: #ccc;
            --font-family: Arial, sans-serif;
            --font-size: 16px;
            --border-radius: 8px;
            --box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            --transition-duration: 0.3s;
        }

        body {
            font-family: var(--font-family);
            background-color: var(--background-color);
            margin: 50px;
            text-align: center;
        }

        h2 {
            color: var(--primary-color); /* Coral color for header */
        }

        form {
            max-width: 400px;
            margin: auto;
            background-color: var(--container-bg-color);
            padding: 20px;
            border-radius: var(--border-radius);
            box-shadow: var(--box-shadow);
            transition: box-shadow var(--transition-duration), transform var(--transition-duration);
        }

        form:hover {
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2); /* Darker shadow on hover */
            transform: scale(1.02); /* Slight scaling effect on hover */
        }

        input[type=text], input[type=password], input[type=email], input[type=number], input[type=date], select {
            width: 100%;
            padding: 10px;
            margin: 5px 0 20px 0;
            display: inline-block;
            border: 1px solid var(--border-color);
            box-sizing: border-box;
            border-radius: var(--border-radius);
        }

        button {
            background-color: var(--button-bg-color); /* Coral color for button */
            color: white;
            padding: 10px 20px;
            margin: 10px 0;
            border: none;
            cursor: pointer;
            width: 100%;
            border-radius: var(--border-radius);
            transition: background-color var(--transition-duration);
        }

        button:hover {
            background-color: var(--button-hover-bg-color); /* Tomato color on hover */
        }

        .login-link {
            display: block;
            margin-top: 20px;
            text-decoration: none;
            color: var(--link-color); /* Coral color for links */
            transition: color var(--transition-duration);
        }

        .login-link:hover {
            color: var(--link-hover-color); /* Tomato color on hover */
        }

        .change-password-link {
            display: block;
            margin-top: 20px;
            text-align: center;
            color: var(--link-color); /* Coral color for links */
            text-decoration: none;
            transition: color var(--transition-duration);
        }

        .change-password-link:hover {
            color: var(--link-hover-color); /* Tomato color on hover */
            text-decoration: underline;
        }
    </style>
</head>
<body>

<h2>Customer Registration</h2>

<form action="customerRegistration" method="post">
    <div class="container">
        <label for="fullName"><b>Full Name</b></label>
        <input type="text" placeholder="Enter Full Name" name="fullName" required>

        <label for="address"><b>Address</b></label>
        <input type="text" placeholder="Enter Address" name="address" required>

        <label for="mobileNo"><b>Mobile No</b></label>
        <input type="text" placeholder="Enter Mobile No" name="mobileNo" required>

        <label for="email"><b>Email</b></label>
        <input type="email" placeholder="Enter Email" name="email" required>

        <label for="accountType"><b>Account Type</b></label>
        <select name="accountType" required>
            <option value="Saving">Saving Account</option>
            <option value="Current">Current Account</option>
        </select>

        <label for="initialBalance"><b>Initial Balance (min 1000)</b></label>
        <input type="number" placeholder="Enter Initial Balance" name="initialBalance" min="1000" required>

        <label for="dob"><b>Date of Birth</b></label>
        <input type="date" name="dob" required>

        <label for="idProof"><b>ID Proof</b></label>
        <input type="text" placeholder="Enter ID Proof" name="idProof" required>

        <button type="submit">Register</button>
    </div>
</form>
<a class="login-link" href="customer_login.jsp">Back to Login</a>

</body>
</html>
