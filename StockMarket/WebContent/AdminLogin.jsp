<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title><jsp:include page="header/projecttitle.jsp"></jsp:include></title>
</head>

<%
if(request.getParameter("login")!=null)
{
	out.print("<script>alert('Invalid Username or Password')</script>");
}


%>
<body id="body">
	<jsp:include page="header/mainheader.jsp"></jsp:include>
	<br>
	<br>
	<section id="contact" class="wow fadeInUp">
		<div class="container">
			<div class="section-header">
				<h2>Admin Login</h2>
				<br> <br>
				<p>Please Enter Login Details</p>
			</div>

		</div>

		<div class="container">
			<div class="form">
				<div id="errormessage"></div>
				<form action="AdminLogin" method="post">
					<div class="form-row">
						<div class="form-group col-md-12">
							<input type="text" name="username" class="form-control" id="name"
								placeholder="Enter Username" />
						</div>
						<div class="form-group col-md-12">
							<input type="password" class="form-control" name="password"
								placeholder="Your Password" />
							<div class="validation"></div>
						</div>
					</div>
					<br> <br>
					<div class="text-center">
						<button type="submit">Login</button>
					</div>
				</form>
			</div>

		</div>
	</section>
	</main>


	<jsp:include page="header/footer.jsp"></jsp:include>

</body>
</html>
