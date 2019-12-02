package com;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mail.SendMailSSL;
import db.ConnectionProvider;
@WebServlet("/UserRequest")
public class UserRequest extends HttpServlet {
	private static final long serialVersionUID = 1L;
	SendMailSSL sentMail=new SendMailSSL();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		Connection con=ConnectionProvider.getConnection();
		String userId=request.getParameter("userId");
		String userEmail=GlobalFunction.getUserEmail(userId);
		String status=request.getParameter("status");
		switch (status) {
		case "accept":
			try {
				PreparedStatement prepareState=con.prepareStatement("update user set status='accept' where user_id='"+userId+"'");
				prepareState.executeUpdate();
				sentMail.EmailSending(userEmail,"Application Status", "Your application is Accepted");
				response.sendRedirect("UserRequest.jsp?status");
			} catch (SQLException e) {
				e.printStackTrace();
			}
			break;

		case "reject":
			try {
				PreparedStatement prepareState=con.prepareStatement("update user set status='reject' where user_id='"+userId+"'");
				prepareState.executeUpdate();
				sentMail.EmailSending(userEmail,"Application Status", "Your application is Rejected");
				response.sendRedirect("UserRequest.jsp?status");
			} catch (SQLException e) {
				e.printStackTrace();
			}
			break;

		default:
			break;
		}
	}
}
