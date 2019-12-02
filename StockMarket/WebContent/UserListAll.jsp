<%@page import="java.sql.ResultSet"%>
<%@page import="db.ConnectionProvider"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title><jsp:include page="header/projecttitle.jsp"></jsp:include></title>
</head>
<%
	Connection con = ConnectionProvider.getConnection();
	PreparedStatement ps = con
			.prepareStatement("SELECT * FROM  `user`");
	ResultSet rs = ps.executeQuery();
%>
<body id="body">
	<jsp:include page="header/adminheader.jsp"></jsp:include>
	<br>
	<br>
	<section id="contact" class="wow fadeInUp">
		<div class="container">
			<div class="section-header">
				<h2>Users List</h2>
				<br> <br>
			</div>

		</div>

		<div class="container">
			<div class="form">
				<div id="errormessage"></div>
				<div class="form-row">
					<div class="form-group col-md-12">
						<table id="simple-table" class="table  table-bordered table-hover">
							<thead>
								<tr align="center">
									<th>Sr. No</th>
									<th>Name</th>
									<th>Mobile</th>
									<th>Email</th>
									<th>Address</th>
									<th>Status</th>
								</tr>
								<tr>
									<%
										int i = 1;

										while (rs.next()) {
											String user_id = rs.getString("user_id");
											String fname = rs.getString("first_name");
											String lname = rs.getString("last_name");
											String mobile = rs.getString("mobile");
											String email = rs.getString("email");
											String address = rs.getString("address");
											String status = rs.getString("status");
									%>
									<td><%=i%></td>
									<td><%=fname + " " + lname%></td>
									<td><%=mobile%></td>
									<td><%=email%></td>
									<td><%=address%></td>
									<td><%=status%></td>

								</tr>

								<%
									i++;
									}
								%>
							</thead>
						</table>
					</div>

				</div>
				<br> <br>
			</div>

		</div>
	</section>
	</main>


	<jsp:include page="header/footer.jsp"></jsp:include>

</body>
</html>
