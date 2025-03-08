package com.BTB.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
    public loginServlet() {
        super();
    }
	
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		
		if("lads8572@gmail.com".equals(email) && "12345".equals(password))
		{
			jakarta.servlet.http.HttpSession session=request.getSession();
			session.setAttribute("username", email);
			response.sendRedirect("welcome.jsp");
		}
		else
		{
			response.getWriter().println("Invalid Credentials! <a href='login.jsp'> Try Again");
		}
	}

}
