<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome Bus Ticket Booking </title>
</head>

<body>
    <%
        HttpSession session1 = request.getSession(false);
        if (session1 != null && session1.getAttribute("username") != null) {
            out.print("Welcome, " + session1.getAttribute("username"));
        } else {
            response.sendRedirect("login.jsp");
        }
    %>
    <br>
    <a href="LogoutServlet">Logout</a>
</body>


</html>