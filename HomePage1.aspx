<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HomePage1.aspx.cs" Inherits="HomePage1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>eDine</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
	<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700;900&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@400;500;600;700&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

	<link rel="stylesheet" href="css/animate.css">
	
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/owl.theme.default.min.css">
	<link rel="stylesheet" href="css/magnific-popup.css">

	<link rel="stylesheet" href="css/bootstrap-datepicker.css">
	<link rel="stylesheet" href="css/jquery.timepicker.css">

	
	<link rel="stylesheet" href="css/flaticon.css">
	<link rel="stylesheet" href="css/style.css">
</head>
<body>
      	<div class="wrap">
		<div class="container">
			<div class="row justify-content-between">
				<div class="col-12 col-md d-flex align-items-center">
					<p class="mb-0 phone"><span class="mailus">Phone no:</span> <a href="#">+91 9847200001</a> or <span class="mailus">email us:</span> <a href="#">info@eDine.com</a></p>
				</div>
				<div class="col-12 col-md d-flex justify-content-md-end">
					<p class="mb-0">Mon - Fri / 9:00-21:00, Sat - Sun / 10:00-20:00</p>
					
				</div>
			</div>
		</div>
	</div>
		
	<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
		<div class="container">
			<a class="navbar-brand" href="Homepage1.aspx">Parking & eDine <span></span></a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
				<span class="oi oi-menu"></span> Menu
			</button>

			<div class="collapse navbar-collapse" id="ftco-nav">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a href="Homepage1.aspx" class="nav-link">Home</a></li>
					<li class="nav-item"><a href="Aboutus.aspx" class="nav-link">About</a></li>
					<li class="nav-item"><a href="HotelRegistration.aspx" class="nav-link">Hotel Registration</a></li>
					<li class="nav-item"><a href="UserRegistration1.aspx" class="nav-link">Customer Registration</a></li>
                    <li class="nav-item"><a href="VisistorViewFoodMenu.aspx" class="nav-link">Top Recommended</a></li>
					<%--<li class="nav-item"><a href="reservation.html" class="nav-link">Reservation</a></li>
					<li class="nav-item"><a href="blog.html" class="nav-link">Blog</a></li>--%>
					<li class="nav-item"><a href="Contactus.aspx" class="nav-link">Contact</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- END nav -->
	
	<section class="hero-wrap">
		<div class="home-slider owl-carousel js-fullheight">
			<div class="slider-item js-fullheight" style="background-image:url(images/bg_1.jpg);">
				<div class="overlay"></div>
				<div class="container">
					<div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center">
						<div class="col-md-12 ftco-animate">
							<div class="text w-100 mt-5 text-center">
								<span class="subheading"></h2></span>
								<h1>Cooking Since</h1>
								<span class="subheading-2">1958</span>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="slider-item js-fullheight" style="background-image:url(images/bg_2.jpg);">
				<div class="overlay"></div>
				<div class="container">
					<div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center">
						<div class="col-md-12 ftco-animate">
							<div class="text w-100 mt-5 text-center">
								<%--<span class="subheading">eDine Restaurant</h2></span>--%>
								<h1>Best Quality</h1>
								<span class="subheading-2 sub">Food</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>


	

	<section class="ftco-section ftco-wrap-about ftco-no-pb ftco-no-pt">
		<div class="container">
			<div class="row no-gutters">
				<div class="col-sm-4 p-4 p-md-5 d-flex align-items-center justify-content-center bg-primary">
                  <form id="form2" runat="server" class="appointment-form">
					<%--<form action="#" class="appointment-form">--%>
						<h3 class="mb-3">Login</h3>
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
                                    <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Username"></asp:TextBox>
									
								</div>
							</div>
							<div class="col-md-12">
								<div class="form-group">
                                    <asp:TextBox ID="TextBox2" runat="server" class="form-control" 
                                        placeholder="Password" TextMode="Password"></asp:TextBox>
								
								</div>
							</div>
							
							<div class="col-md-12">
								<div class="form-group">
                                    <asp:Button ID="Button1" runat="server" Text="Login" 
                                        class="btn btn-white py-3 px-4" onclick="Button1_Click"></asp:Button>
									
								</div>
							</div>
                            <div class="col-md-12">
								<div class="form-group">
                                    <asp:Button ID="Button2" runat="server" Text="Cancel" 
                                        class="btn btn-white py-3 px-4" onclick="Button2_Click"></asp:Button>
									
								</div>
							</div>
                            <div class="col-md-12">
								<div class="form-group">
                                   <asp:LinkButton ID="LinkButton1" runat="server"  class="btn btn-white py-3 px-4" 
                                        onclick="LinkButton1_Click" >Forget Password</asp:LinkButton> 
									
								</div>
							</div>
						</div>
					</form>
				</div>
				<div class="col-sm-8 wrap-about py-5 ftco-animate img" style="background-image: url(images/about.jpg);">
					<div class="row pb-5 pb-md-0">
						<div class="col-md-12 col-lg-7">
							<div class="heading-section mt-5 mb-4">
								<div class="pl-lg-3 ml-md-5">
									<span class="subheading">About Us</span>
									<%--<h2 class="mb-4">Welcome to Taste.it</h2>--%>
								</div>
							</div>
							<div class="pl-lg-3 ml-md-5">
								<p style="text-align:justify">eDine is helpful for the customers to find the best hotels with good facilities and also considering the valuable time every single customers. Through using eDine, the customer can have wonderful dining experience without spoiling the customers valuable time from valet parking difficulties, seat finding, food ordering and preparation time delays. The system should be as adaptable as possible, allowing it to be used in a variety of hotels. We need to figure out what protocols hotels use, and then build a machine that follows those procedures</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	

	<section class="ftco-section testimony-section" style="background-image: url(images/bg_5.jpg);">
		<div class="overlay"></div>
		<div class="container">
			<div class="row justify-content-center mb-3 pb-2">
				<div class="col-md-7 text-center heading-section heading-section-white ftco-animate">
					<span class="subheading">Testimony</span>
					<h2 class="mb-4">Happy Customer</h2>
				</div>
			</div>
			<div class="row ftco-animate justify-content-center">
				<div class="col-md-7">
					<div class="carousel-testimony owl-carousel ftco-owl">
						<div class="item">
							<div class="testimony-wrap text-center">
								<div class="text p-3">
									<p class="mb-4">The business of feeding people is the most amazing business in the world.</p>
									<div class="user-img mb-4" style="background-image: url(images/person_1.jpg)">
										<span class="quote d-flex align-items-center justify-content-center">
											<i class="fa fa-quote-left"></i>
										</span>
									</div>
									<p class="name">John Gustavo</p>
									<span class="position">Customer</span>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="testimony-wrap text-center">
								<div class="text p-3">
									<p class="mb-4">A restaurant is a fantasy—a kind of living fantasy in which diners are the most important members of the cast.</p>
									<div class="user-img mb-4" style="background-image: url(images/person_2.jpg)">
										<span class="quote d-flex align-items-center justify-content-center">
											<i class="fa fa-quote-left"></i>
										</span>
									</div>
									<p class="name">Warner LeRoy</p>
									<span class="position">Customer</span>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="testimony-wrap text-center">
								<div class="text p-3">
									<p class="mb-4">A good restaurant is like a vacation; it transports you, and it becomes a lot more than just about the food.</p>
									<div class="user-img mb-4" style="background-image: url(images/person_3.jpg)">
										<span class="quote d-flex align-items-center justify-content-center">
											<i class="fa fa-quote-left"></i>
										</span>
									</div>
									<p class="name">Philip Rosenthal</p>
									<span class="position">Customer</span>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="testimony-wrap text-center">
								<div class="text p-3">
									<p class="mb-4">If anything is good for pounding humility into you permanently, it’s the restaurant business.</p>
									<div class="user-img mb-4" style="background-image: url(images/person_4.jpg)">
										<span class="quote d-flex align-items-center justify-content-center">
											<i class="fa fa-quote-left"></i>
										</span>
									</div>
									<p class="name">Anthony Bourdain</p>
									<span class="position">Customer</span>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="testimony-wrap text-center">
								<div class="text p-3">
									<p class="mb-4">There’s a bond among a kitchen staff, I think. You spend more time with your chef in the kitchen than you do with your own family.</p>
									<div class="user-img mb-4" style="background-image: url(images/person_5.jpg)">
										<span class="quote d-flex align-items-center justify-content-center">
											<i class="fa fa-quote-left"></i>
										</span>
									</div>
									<p class="name">Gordon Ramsey</p>
									<span class="position">Customer</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	


	<section class="ftco-section ftco-no-pt ftco-no-pb">
		<div class="container">
			<div class="row d-flex">
				<div class="col-md-6 d-flex">
					<div class="img img-2 w-100 mr-md-2" style="background-image: url(images/bg_6.jpg);"></div>
					<div class="img img-2 w-100 ml-md-2" style="background-image: url(images/bg_4.jpg);"></div>
				</div>
				<div class="col-md-6 ftco-animate makereservation p-4 p-md-5">
					<div class="heading-section ftco-animate mb-5">
					
						<h2 class="mb-4">This is our secrets</h2>
						<p>Explore curated lists of top restaurants, cafes, pubs, and bars in Trivandrum, based on trends. eDine enables you to get 60% more revenue, 10x new customers and boost your brand visibility by providing insights to improve your business.
						</p>
				
					</div>
				</div>
			</div>
		</div>
	</section>



	<section class="ftco-section ftco-no-pt ftco-no-pb ftco-intro bg-primary">
		<div class="container py-5">
			<div class="row py-2">
				<div class="col-md-12 text-center">
					<h2>We Make Delicious &amp; Nutritious Food</h2>
				
				</div>
			</div>
		</div>
	</section>

	<footer class="ftco-footer ftco-no-pb ftco-section">
		<div class="container">
			<div class="row mb-5">
				<div class="col-md-6 col-lg-3">
					<div class="ftco-footer-widget mb-4">
						<h2 class="ftco-heading-2">eDine</h2>
						<p>eDine is helpful for the customers to find the best hotels with good facilities and also considering the valuable time every single customers. The system should be as adaptable as possible, allowing it to be used in a variety of hotels. </p>
						<ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-3">
							<li class="ftco-animate"><a href="#"><span class="fa fa-twitter"></span></a></li>
							<li class="ftco-animate"><a href="#"><span class="fa fa-facebook"></span></a></li>
							<li class="ftco-animate"><a href="#"><span class="fa fa-instagram"></span></a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-6 col-lg-3">
					<div class="ftco-footer-widget mb-4">
						<h2 class="ftco-heading-2">Open Hours</h2>
						<ul class="list-unstyled open-hours">
							<li class="d-flex"><span>Monday</span><span>9:00 - 24:00</span></li>
							<li class="d-flex"><span>Tuesday</span><span>9:00 - 24:00</span></li>
							<li class="d-flex"><span>Wednesday</span><span>9:00 - 24:00</span></li>
							<li class="d-flex"><span>Thursday</span><span>9:00 - 24:00</span></li>
							<li class="d-flex"><span>Friday</span><span>9:00 - 02:00</span></li>
							<li class="d-flex"><span>Saturday</span><span>9:00 - 02:00</span></li>
							<li class="d-flex"><span>Sunday</span><span> Closed</span></li>
						</ul>
					</div>
				</div>
				<div class="col-md-6 col-lg-3">
					<div class="ftco-footer-widget mb-4">
						<h2 class="ftco-heading-2">Instagram</h2>
						<div class="thumb d-sm-flex">
							<a href="#" class="thumb-menu img" style="background-image: url(images/insta-1.jpg);">
							</a>
							<a href="#" class="thumb-menu img" style="background-image: url(images/insta-2.jpg);">
							</a>
							<a href="#" class="thumb-menu img" style="background-image: url(images/insta-3.jpg);">
							</a>
						</div>
						<div class="thumb d-flex">
							<a href="#" class="thumb-menu img" style="background-image: url(images/insta-4.jpg);">
							</a>
							<a href="#" class="thumb-menu img" style="background-image: url(images/insta-5.jpg);">
							</a>
							<a href="#" class="thumb-menu img" style="background-image: url(images/insta-6.jpg);">
							</a>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-3">
					<div class="ftco-footer-widget mb-4">
						<h2 class="ftco-heading-2">Contact us</h2>
						<p>We would love to hear from you!.</p>
						<form action="#" class="subscribe-form">
                        <ul class="list-unstyled open-hours">
							<li class="d-flex"><span>Phone:</span><span>+91 9847200001</span></li>
							<li class="d-flex"><span>Email:</span><span>info@eDine.com</span></li>
						
							
						</ul>
						
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="container-fluid px-0 bg-primary py-3">
			<div class="row no-gutters">
				<div class="col-md-12 text-center">

					<p class="mb-0"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						Copyright &copy;<script>						                    document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="#" target="_blank">YUVATECH Solutions</a>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
					</div>
				</div>
			</div>
		</footer>
		

		<!-- loader -->
		<div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


		<script src="js/jquery.min.js"></script>
		<script src="js/jquery-migrate-3.0.1.min.js"></script>
		<script src="js/popper.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/jquery.easing.1.3.js"></script>
		<script src="js/jquery.waypoints.min.js"></script>
		<script src="js/jquery.stellar.min.js"></script>
		<script src="js/owl.carousel.min.js"></script>
		<script src="js/jquery.magnific-popup.min.js"></script>
		<script src="js/jquery.animateNumber.min.js"></script>
		<script src="js/bootstrap-datepicker.js"></script>
		<script src="js/jquery.timepicker.min.js"></script>
		<script src="js/scrollax.min.js"></script>
		<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
		<script src="js/google-map.js"></script>
		<script src="js/main.js"></script>
   <%-- <form id="form1" runat="server">
    <div>
    
    </div>
    </form>--%>
</body>
</html>
