package com;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import db.ConnectionProvider;

/**
 * Servlet implementation class UserLogin
 */
@WebServlet("/UserLogin")
public class UserLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection connnection;
	PreparedStatement prepareStatement;
	public void init(ServletConfig config) throws ServletException {
		connnection=ConnectionProvider.getConnection();
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		HttpSession session=request.getSession();
		
		try {
			String query="select * from user where email='"+email+"'and password='"+password+"' and status='accept'";
			prepareStatement=connnection.prepareStatement(query);
			ResultSet rs=prepareStatement.executeQuery();
			if(rs.next())
			{
				session.setAttribute("email",email);
				System.out.println("Login Done");
				response.sendRedirect("UserHome.jsp?login=Done");
			}
			else
			{
				System.out.println("Login fail");
				response.sendRedirect("UserLogin.jsp?login=fail");
			}
			
		} catch (Exception e) {
			System.out.println("Exception"+e);
		}
		
		
		
	}

}
