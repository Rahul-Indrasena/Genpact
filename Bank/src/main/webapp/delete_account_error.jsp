<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Account Error</title>
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
            margin: 0;
            padding: 20px;
        }

        .container {
            background-color: var(--container-bg-color);
            padding: 20px;
            border-radius: var(--border-radius);
            box-shadow: var(--box-shadow);
            transition: box-shadow var(--transition-duration), transform var(--transition-duration);
        }

        .container:hover {
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2); /* Darker shadow on hover */
            transform: scale(1.02); /* Slight scaling effect on hover */
        }

        h1 {
            color: var(--primary-color); /* Coral color for header */
        }

        p {
            margin: 20px 0;
            color: #333; /* Darker text color for better readability */
        }

        .button {
            padding: 10px 20px;
            text-decoration: none;
            background-color: var(--button-bg-color); /* Coral color for button */
            color: white;
            border-radius: var(--border-radius);
            text-align: center;
            display: inline-block;
            margin-top: 10px;
            transition: background-color var(--transition-duration);
        }

        .button:hover {
            background-color: var(--button-hover-bg-color); /* Tomato color on hover */
        }

        a {
            display: block;
            text-align: center;
            margin-top: 20px;
            color: var(--link-color); /* Coral color for link */
            text-decoration: none;
            transition: color var(--transition-duration);
        }

        a:hover {
            color: var(--link-hover-color); /* Tomato color on hover */
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Account Deletion Error</h1>
        <p>Your account could not be deleted because it has a non-zero balance or the credentials are incorrect. Please withdraw all funds or provide correct credentials before attempting to delete the account.</p>
        <a href="customer_dashboard.jsp" class="button">Go to Dashboard</a>
    </div>
</body>
</html>
