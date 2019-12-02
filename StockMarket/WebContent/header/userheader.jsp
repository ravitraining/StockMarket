<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<link href="img/favicon.png" rel="icon">
<link href="img/apple-touch-icon.png" rel="apple-touch-icon">
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Raleway:300,400,500,700,800|Montserrat:300,400,700"
	rel="stylesheet">
<link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
<link href="lib/animate/animate.min.css" rel="stylesheet">
<link href="lib/ionicons/css/ionicons.min.css" rel="stylesheet">
<link href="lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">
<link href="lib/magnific-popup/magnific-popup.css" rel="stylesheet">
<link href="lib/ionicons/css/ionicons.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">

</head>
<body>
	<section id="topbar" class="d-none d-lg-block">
	<div class="container clearfix">
		<div class="contact-info float-left">
			<i class="fa fa-envelope-o"></i> <a href="mailto:contact@example.com">contact@example.com</a>
			<i class="fa fa-phone"></i> +1 5589 55488 55
		</div>
		<div class="social-links float-right">
			<a href="#" class="twitter"><i class="fa fa-twitter"></i></a> <a
				href="#" class="facebook"><i class="fa fa-facebook"></i></a> <a
				href="#" class="instagram"><i class="fa fa-instagram"></i></a> <a
				href="#" class="google-plus"><i class="fa fa-google-plus"></i></a> <a
				href="#" class="linkedin"><i class="fa fa-linkedin"></i></a>
		</div>
	</div>
	</section>

	<header id="header">
	<div class="container">

		<div id="logo" class="pull-left">
			<h1>
				<a href="#body" class="scrollto"> <jsp:include
						page="projecttitle.jsp"></jsp:include> <span></span></a>
			</h1>
		</div>



		<nav id="nav-menu-container">
		<ul class="nav-menu">
			<li class="menu-active"><a href="index.jsp">Home</a></li>
			<li class="menu-has-children"><a href="">List</a>
				<ul>
					<li><a href="#">Drop Down 4</a></li>
					<li><a href="#">Drop Down 5</a></li>
				</ul></li>
			<li><a href="#contact">Contact</a></li>
			<li><a href="index.jsp?logout=done">Logout</a></li>
		</ul>
		</nav>
		<!-- #nav-menu-container -->

	</div>
	</header>
	<!-- #header -->
</body>
</html>