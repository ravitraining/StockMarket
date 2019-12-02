package com;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import db.ConnectionProvider;

public class GlobalFunction {
	static Connection con = ConnectionProvider.getConnection();

	public static String getName(String email) {
		String fullname = "";
		String query = "select * from user where email='" + email + "'";
		PreparedStatement ps;
		try {
			ps = con.prepareStatement(query);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				fullname = rs.getString("first_name");
				fullname = fullname + " " + rs.getString("last_name");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return fullname;
	}

	public static String getUserEmail(String userId) {
		String email = "";
		String query = "select * from user where user_id='" + userId + "'";
		PreparedStatement ps;
		try {
			ps = con.prepareStatement(query);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				email = rs.getString("email");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return email;
	}

	public static String getCurrentDate() {
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
						return dateFormat.format(date);
	}
	public static void main(String[] args) {
		String email = GlobalFunction.getUserEmail("3");
		System.out.println(email);
	}

}