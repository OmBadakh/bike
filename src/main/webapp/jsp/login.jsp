<%@ page contentType="text/html;charset=UTF-8" %>
<meta charset="UTF-8">


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login | Bike Finance App</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #d3d3d3;
        }
        .login-box {
            width: 350px;
            margin: 120px auto;
            background: #ffffff;
            padding: 25px;
            border-radius: 5px;
        }
        h2 {
            text-align: center;
        }
        label {
            font-weight: bold;
        }
        input {
            width: 100%;
            padding: 8px;
            margin: 8px 0 15px 0;
        }
        button {
            width: 100%;
            padding: 10px;
            background-color: #1e88e5;
            color: white;
            border: none;
            font-size: 16px;
            cursor: pointer;
        }
        .error {
            color: red;
            text-align: center;
            margin-bottom: 10px;
        }
    </style>
</head>

<body>

<div class="login-box">
    <h2>Login</h2>

    <!-- Error Message -->
    <%
        if (request.getParameter("error") != null) {
    %>
        <div class="error">Invalid Username or Password</div>
    <%
        }
    %>

    <form action="<%=request.getContextPath()%>/login" method="post">
        <label>Username</label>
        <input type="text" name="username" required>

        <label>Password</label>
        <input type="password" name="password" required>

        <button type="submit">Next</button>
    </form>
</div>

</body>
</html>
