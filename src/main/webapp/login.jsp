<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>

<head>
<meta charset="UTF-8">
<title>Bus Ticket Booking</title>
</head>

<body>
        <h2>Login to Book Your Bus Ticket</h2>
        <form action="LoginServlet" method="post">
        Email: <input type="email" name="email" required><br>
        Password: <input type="password" name="password" required><br>
        <input type="submit" value="Login">
        </form>
        <br>
        <a href="register.jsp">Register</a>
</body>

</html>