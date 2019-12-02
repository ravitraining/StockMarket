package com;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.mail.Session;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import db.ConnectionProvider;

@WebServlet("/AdminLogin")
public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection connnection;
	PreparedStatement prepareStatement;
	public void init(ServletConfig config) throws ServletException {
		connnection = ConnectionProvider.getConnection();
	}
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		String username = request.getParameter("username");
		String password = request.getParameter("password");
		System.out.println(username);
		System.out.println(password);
		HttpSession session = request.getSession();
		try {
			String query = "select * from admin where username='" + username
					+ "'and password='" + password + "'";
			prepareStatement = connnection.prepareStatement(query);
			ResultSet rs = prepareStatement.executeQuery();
			if (rs.next()) {
				session.setAttribute(username, "username");
				session.setAttribute(password, "password");
				System.out.println("Login Done");
				response.sendRedirect("AdminHome.jsp?login=Done");
			} else {
				System.out.println("Login fail");
				response.sendRedirect("AdminLogin.jsp?login=fail");
			}
		} catch (Exception e) {
			System.out.println("Exception" + e);
		}
	}
}
