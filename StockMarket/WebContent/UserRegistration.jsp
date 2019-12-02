<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title><jsp:include page="header/projecttitle.jsp"></jsp:include></title>
</head>

<%
if(request.getParameter("already")!=null)
{
	out.print("<script>alert('This Email is Already registered...')</script>");
}

%>


<body id="body">
	<jsp:include page="header/mainheader.jsp"></jsp:include>
	<br>
	<br>
	<section id="contact" class="wow fadeInUp">
		<div class="container">
			<div class="section-header">
				<h2>User Registration</h2>
				<br> <br>
				<p>Please Enter Details</p>
			</div>

		</div>

		<div class="container">
			<div class="form">
				<div id="errormessage"></div>
				<form action="UserRegistration" method="post">
					<div class="form-row">
						<div class="form-group col-md-12">
							<input type="text" name="firstname" class="form-control" id="name"
								placeholder="Enter First Name" required="required" />
						</div>
						<div class="form-group col-md-12">
							<input type="text" class="form-control" name="lastname"
								placeholder="Your Last Name"required="required" />
							<div class="validation"></div>
						</div>
						
						<div class="form-group col-md-12">
							<input type="email" name="email" class="form-control" id="name"
								placeholder="Enter Email" required="required" />
						</div>
						<div class="form-group col-md-12">
							<input type="text" class="form-control" name="mobile"
								placeholder="Your Mobile"required="required" />
							<div class="validation"></div>
						</div>
						<div class="form-group col-md-12">
							<input type="text" name="password" class="form-control" id="name"
								placeholder="Enter Password" required="required" />
						</div>
						<div class="form-group col-md-12">
							<input type="text" name="address" class="form-control" id="name"
								placeholder="Enter Address" required="required" />
						</div>
						<div class="form-group col-md-12">
							<input type="date" name="dob" class="form-control" id="name"
								placeholder="Choose Date" required="required" />
						</div>
						<div class="form-group col-md-12">
							<select name="gender" class="form-control"  >
							<option value="select">--Select Gender--</option>
							<option value="male">Male</option>
							<option value="female">Female</option>
							</select>
						</div>
					</div>
					<br> <br>
					<div class="text-center">
						<button type="submit">Register</button>
					</div>
				</form>
			</div>

		</div>
	</section>
	</main>


	<jsp:include page="header/footer.jsp"></jsp:include>

</body>
</html>
