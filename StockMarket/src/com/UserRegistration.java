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

import db.ConnectionProvider;

/**
 * Servlet implementation class UserRegistration
 */
@WebServlet("/UserRegistration")
public class UserRegistration extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection connection;
	PreparedStatement preparedStatement;

/*	public String pwdGenerate() {
		char[] chars = "1234567890abcdefghijklmnopqrstuvwxyz".toCharArray();
		StringBuilder sb = new StringBuilder();
		Random random = new Random();
		for (int i = 0; i < 6; i++) {
			char c = chars[random.nextInt(chars.length)];
			sb.append(c);
		}
		String output = sb.toString();
		return output;
	}
*/
	public void init(ServletConfig config) throws ServletException {
		connection = ConnectionProvider.getConnection();
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String fname = request.getParameter("firstname");
		String lname = request.getParameter("lastname");
		String mobileno = request.getParameter("mobile");
		String email = request.getParameter("email");
		String gender = request.getParameter("gender");
		String password = request.getParameter("password");
		String address = request.getParameter("address");

		try {
			PreparedStatement ps1 = connection
					.prepareStatement("select * from user where email='"
							+ email + "'");
			ResultSet rs = ps1.executeQuery();
			if (!rs.next()) {
				String query = "INSERT INTO `user`(`first_name`, `last_name`, `gender`, `email`, `mobile`, `address`, `password`) VALUES "
						+ "('"
						+ fname
						+ "','"
						+ lname
						+ "','"
						+ gender
						+ "','"
						+ email
						+ "','"
						+ mobileno
						+ "','"
						+ address
						+ "','"
						+ password + "')";

				preparedStatement = connection.prepareStatement(query);
				int rs1 = preparedStatement.executeUpdate();
				response.sendRedirect("UserLogin.jsp?regis=success");
			} else {
				response.sendRedirect("UserRegistration.jsp?already=reg");
			}
		} catch (Exception e) {
			System.out.println("Exception" + e);
		}

	}
}
