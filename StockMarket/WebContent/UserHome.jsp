<%@page import="com.GlobalFunction"%>
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
	out.print("<script>alert('Login Success')</script>");
}

String email=session.getAttribute("email").toString();
String name=GlobalFunction.getName(email);

%>


<body id="body">
	<jsp:include page="header/userheader.jsp"></jsp:include>
	<section id="intro">
		<div class="intro-content">
			<h2>
				WELCOME <span>
				<br>
				<%=name %></span>
			</h2>
		</div>

		<div id="intro-carousel" class="owl-carousel">
			<div class="item"
				style="background-image: url('img/intro-carousel/1.jpg');"></div>
			<div class="item"
				style="background-image: url('img/intro-carousel/2.jpg');"></div>
			<div class="item"
				style="background-image: url('img/intro-carousel/3.jpg');"></div>
			<div class="item"
				style="background-image: url('img/intro-carousel/4.jpg');"></div>
			<div class="item"
				style="background-image: url('img/intro-carousel/5.jpg');"></div>
		</div>

	</section>
	<!-- #intro -->

	<main id="main">

	<section id="about" class="wow fadeInUp">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 about-img">
					<img src="img/about-img.jpg" alt="">
				</div>

				<div class="col-lg-6 content">
					<h2>Lorem ipsum dolor sit amet, consectetur adipiscing</h2>
					<h3>Excepteur sint occaecat cupidatat non proident, sunt in
						culpa qui officia deserunt mollit anim id est laborum.</h3>

					<ul>
						<li><i class="ion-android-checkmark-circle"></i> Ullamco
							laboris nisi ut aliquip ex ea commodo consequat.</li>
						<li><i class="ion-android-checkmark-circle"></i> Duis aute
							irure dolor in reprehenderit in voluptate velit.</li>
						<li><i class="ion-android-checkmark-circle"></i> Ullamco
							laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure
							dolor in reprehenderit in voluptate trideta storacalaperda
							mastiro dolore eu fugiat nulla pariatur.</li>
					</ul>

				</div>
			</div>

		</div>
	</section>
	<!-- #about -->

	<section id="services">
		<div class="container">
			<div class="section-header">
				<h2>Services</h2>
				<p>Sed tamen tempor magna labore dolore dolor sint tempor duis
					magna elit veniam aliqua esse amet veniam enim export quid quid
					veniam aliqua eram noster malis nulla duis fugiat culpa esse aute
					nulla ipsum velit export irure minim illum fore</p>
			</div>

			<div class="row">

				<div class="col-lg-6">
					<div class="box wow fadeInLeft">
						<div class="icon">
							<i class="fa fa-money" aria-hidden="true"></i>
						</div>
						<h4 class="title">
							<a href="">Intraday Cash</a>
						</h4>
						<p class="description">Youyr day to day cash information srore
							on the Intraday cash info</p>
					</div>
				</div>

				<div class="col-lg-6">
					<div class="box wow fadeInRight">
						<div class="icon">
							<i class="fa fa-bar-chart"></i>
						</div>
						<h4 class="title">
							<a href="">Mutual Fund</a>
						</h4>
						<p class="description">Nutual Fund information and enquiry
							provides to user all the time</p>
					</div>
				</div>

				<div class="col-lg-6">
					<div class="box wow fadeInLeft" data-wow-delay="0.2s">
						<div class="icon">
							<i class="fa fa-shopping-bag"></i>
						</div>
						<h4 class="title">
							<a href="">Training</a>
						</h4>
						<p class="description">Training for real time schenarios about
							mutual fund investment</p>
					</div>
				</div>

				<div class="col-lg-6">
					<div class="box wow fadeInRight" data-wow-delay="0.2s">
						<div class="icon">
							<i class="fa fa-map"></i>
						</div>
						<h4 class="title">
							<a href="">Insurance</a>
						</h4>
						<p class="description">Life insurance covers</p>
					</div>
				</div>

			</div>

		</div>
	</section>
	<!-- #services -->

	<section id="clients" class="wow fadeInUp">
		<div class="container">
			<div class="section-header">
				<h2>Our Clients</h2>
				<p>Sed tamen tempor magna labore dolore dolor sint tempor duis
					magna elit veniam aliqua esse amet veniam enim export quid quid
					veniam aliqua eram noster malis nulla duis fugiat culpa esse aute
					nulla ipsum velit export irure minim illum fore</p>
			</div>

			<div class="owl-carousel clients-carousel">
				<img src="img/clients/client-1.png" alt=""> <img
					src="img/clients/client-2.png" alt=""> <img
					src="img/clients/client-3.png" alt=""> <img
					src="img/clients/client-4.png" alt=""> <img
					src="img/clients/client-5.png" alt=""> <img
					src="img/clients/client-6.png" alt=""> <img
					src="img/clients/client-7.png" alt=""> <img
					src="img/clients/client-8.png" alt="">
			</div>

		</div>
	</section>
	<!-- #clients --> <!--==========================
      Our Portfolio Section
    ============================-->
	<section id="portfolio" class="wow fadeInUp">
		<div class="container">
			<div class="section-header">
				<h2>Our Portfolio</h2>
				<p>Our organisation onformation</p>
			</div>
		</div>

		<div class="container-fluid">
			<div class="row no-gutters">

				<div class="col-lg-3 col-md-4">
					<div class="portfolio-item wow fadeInUp">
						<a href="img/portfolio/1.jpg" class="portfolio-popup"> <img
							src="img/portfolio/1.jpg" alt="">
							<div class="portfolio-overlay">
								<div class="portfolio-info">
									<h2 class="wow fadeInUp">Portfolio Item 1</h2>
								</div>
							</div>
						</a>
					</div>
				</div>

				<div class="col-lg-3 col-md-4">
					<div class="portfolio-item wow fadeInUp">
						<a href="img/portfolio/2.jpg" class="portfolio-popup"> <img
							src="img/portfolio/2.jpg" alt="">
							<div class="portfolio-overlay">
								<div class="portfolio-info">
									<h2 class="wow fadeInUp">Portfolio Item 2</h2>
								</div>
							</div>
						</a>
					</div>
				</div>

				<div class="col-lg-3 col-md-4">
					<div class="portfolio-item wow fadeInUp">
						<a href="img/portfolio/3.jpg" class="portfolio-popup"> <img
							src="img/portfolio/3.jpg" alt="">
							<div class="portfolio-overlay">
								<div class="portfolio-info">
									<h2 class="wow fadeInUp">Portfolio Item 3</h2>
								</div>
							</div>
						</a>
					</div>
				</div>

				<div class="col-lg-3 col-md-4">
					<div class="portfolio-item wow fadeInUp">
						<a href="img/portfolio/4.jpg" class="portfolio-popup"> <img
							src="img/portfolio/4.jpg" alt="">
							<div class="portfolio-overlay">
								<div class="portfolio-info">
									<h2 class="wow fadeInUp">Portfolio Item 4</h2>
								</div>
							</div>
						</a>
					</div>
				</div>

				<div class="col-lg-3 col-md-4">
					<div class="portfolio-item wow fadeInUp">
						<a href="img/portfolio/5.jpg" class="portfolio-popup"> <img
							src="img/portfolio/5.jpg" alt="">
							<div class="portfolio-overlay">
								<div class="portfolio-info">
									<h2 class="wow fadeInUp">Portfolio Item 5</h2>
								</div>
							</div>
						</a>
					</div>
				</div>

				<div class="col-lg-3 col-md-4">
					<div class="portfolio-item wow fadeInUp">
						<a href="img/portfolio/6.jpg" class="portfolio-popup"> <img
							src="img/portfolio/6.jpg" alt="">
							<div class="portfolio-overlay">
								<div class="portfolio-info">
									<h2 class="wow fadeInUp">Portfolio Item 6</h2>
								</div>
							</div>
						</a>
					</div>
				</div>

				<div class="col-lg-3 col-md-4">
					<div class="portfolio-item wow fadeInUp">
						<a href="img/portfolio/7.jpg" class="portfolio-popup"> <img
							src="img/portfolio/7.jpg" alt="">
							<div class="portfolio-overlay">
								<div class="portfolio-info">
									<h2 class="wow fadeInUp">Portfolio Item 7</h2>
								</div>
							</div>
						</a>
					</div>
				</div>

				<div class="col-lg-3 col-md-4">
					<div class="portfolio-item wow fadeInUp">
						<a href="img/portfolio/8.jpg" class="portfolio-popup"> <img
							src="img/portfolio/8.jpg" alt="">
							<div class="portfolio-overlay">
								<div class="portfolio-info">
									<h2 class="wow fadeInUp">Portfolio Item 8</h2>
								</div>
							</div>
						</a>
					</div>
				</div>

			</div>

		</div>
	</section>
	<!-- #portfolio -->
	<section id="team" class="wow fadeInUp">
		<div class="container">
			<div class="section-header">
				<h2>Our Team</h2>
			</div>
			<div class="row">
				<div class="col-lg-3 col-md-6">
					<div class="member">
						<div class="pic">
							<img src="img/team-1.jpg" alt="">
						</div>
						<div class="details">
							<h4>AAA</h4>
							<span>aaa</span>
							<div class="social">
								<a href=""><i class="fa fa-twitter"></i></a> <a href=""><i
									class="fa fa-facebook"></i></a> <a href=""><i
									class="fa fa-google-plus"></i></a> <a href=""><i
									class="fa fa-linkedin"></i></a>
							</div>
						</div>
					</div>
				</div>

				<div class="col-lg-3 col-md-6">
					<div class="member">
						<div class="pic">
							<img src="img/team-2.jpg" alt="">
						</div>
						<div class="details">
							<h4>BBB</h4>
							<span>bbb</span>
							<div class="social">
								<a href=""><i class="fa fa-twitter"></i></a> <a href=""><i
									class="fa fa-facebook"></i></a> <a href=""><i
									class="fa fa-google-plus"></i></a> <a href=""><i
									class="fa fa-linkedin"></i></a>
							</div>
						</div>
					</div>
				</div>

				<div class="col-lg-3 col-md-6">
					<div class="member">
						<div class="pic">
							<img src="img/team-3.jpg" alt="">
						</div>
						<div class="details">
							<h4>CCC</h4>
							<span>ccc</span>
							<div class="social">
								<a href=""><i class="fa fa-twitter"></i></a> <a href=""><i
									class="fa fa-facebook"></i></a> <a href=""><i
									class="fa fa-google-plus"></i></a> <a href=""><i
									class="fa fa-linkedin"></i></a>
							</div>
						</div>
					</div>
				</div>

				<div class="col-lg-3 col-md-6">
					<div class="member">
						<div class="pic">
							<img src="img/team-4.jpg" alt="">
						</div>
						<div class="details">
							<h4>DDD</h4>
							<span>ddd</span>
							<div class="social">
								<a href=""><i class="fa fa-twitter"></i></a> <a href=""><i
									class="fa fa-facebook"></i></a> <a href=""><i
									class="fa fa-google-plus"></i></a> <a href=""><i
									class="fa fa-linkedin"></i></a>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
	</section>
	<!-- #team --> <!--==========================
      Contact Section
    ============================-->
		</main>

	<jsp:include page="header/footer.jsp"></jsp:include>
</body>
</html>
