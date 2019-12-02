package com;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import db.ConnectionProvider;

public class GlobalFunction {
	static Connection con=ConnectionProvider.getConnection();
public static String getName(String email)
{
	String fullname="";
	String query="select * from user where email='"+email+"'";
	PreparedStatement ps;
	try {
		ps = con.prepareStatement(query);
		ResultSet rs=ps.executeQuery();
		if(rs.next())
		{
			fullname=rs.getString("first_name");
			fullname=fullname+" "+rs.getString("last_name");
		}
	} catch (SQLException e) {
		e.printStackTrace();
	}
	return fullname;
}
public static void main(String[] args){
String name=GlobalFunction.getName("raviwalture@gmail.com");
System.out.println(name);
}
}
