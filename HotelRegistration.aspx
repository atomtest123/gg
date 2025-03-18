<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HotelRegistration.aspx.cs" Inherits="HotelRegistration" %>

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
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBsVO8WE0nP0dD5aoHMqI0NmO84SXhu32s&libraries=places"></script>
   
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
			<a class="navbar-brand" href="index.html">Parking & eDine<span></span></a>
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
								<%--<span class="subheading">eDine Restaurant</h2></span>--%>
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
							<%--	<span class="subheading">eDine Restaurant</h2></span>--%>
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
                 <%-- <form id="form2" runat="server" class="appointment-form">--%>
					<%--<form action="#" class="appointment-form">--%>
						<h3 class="mb-3"></h3>
                         
                        	<h3 class="mb-3"></h3>
						
					<%--</form>--%>
				</div>
				<%--<div class="col-sm-8 wrap-about py-5 ftco-animate img" style="background-image: url(images/about.jpg);">--%>
                <div class="col-sm-8 wrap-about py-5 ftco-animate img">
					<%--<div class="row pb-5 pb-md-0">--%>
						<%--<div class="col-md-12 col-lg-7">--%>
							<div class="heading-section mt-5 mb-4">
								<div class="pl-lg-3 ml-md-5">
									<span class="subheading">Hotel Registration</span>
									<%--<h2 class="mb-4">Welcome to Taste.it</h2>--%>
								</div>
							</div>
							<%--<div class="pl-lg-3 ml-md-5">--%>
								 <form id="form1" runat="server" >
					        <div style="Width:1100px;text-align:left;padding-left: 10px;">
     
         <%--<asp:Label ID="Label8" runat="server" Font-Bold="True" ForeColor="#FBAF32" Font-Size = "X-Large"
            Text="User Registration"></asp:Label>--%>
        <br />
         <br />
         <asp:Label ID="Label3" runat="server" Text="Username:" Font-Bold="False" 
             Font-Names="Arial" Font-Size="Medium"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server" Height="32px" Width="225px"></asp:TextBox> &nbsp;&nbsp;&nbsp;<asp:Label ID="lblmsg" runat="server"></asp:Label>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
         <asp:Label ID="Label15" runat="server" 
             Text="Owner Name:" Font-Names="Arial" Font-Size="Medium"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
             ID="TextBox12" runat="server"  Height="32px" Width="225px" ></asp:TextBox>
         <br />
         <br />
        <asp:Label ID="Label14" runat="server" Text="Hotel Name:" Font-Names="Arial" 
             Font-Size="Medium"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox8" runat="server" Height="32px" Width="225px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <asp:Label ID="Label16" 
             runat="server" Text="Contact No:" Font-Names="Arial" Font-Size="Medium"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox10" runat="server"  Height="32px" Width="225px" ></asp:TextBox>
             <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                 ErrorMessage="*" ForeColor="#FF5050" ControlToValidate="TextBox10"></asp:RegularExpressionValidator>--%>
             <br />
         <br />

        <asp:Label ID="Label4" runat="server" Text="Email ID:" Font-Names="Arial" 
             Font-Size="Medium"></asp:Label>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server" Height="32px"  Width="225px"></asp:TextBox>
         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
         <asp:Label ID="Label17" runat="server" 
             Text="Date of Starting:" Font-Names="Arial" Font-Size="Medium"></asp:Label>
        &nbsp;<asp:DropDownList ID="DropDownList7" 
                 runat="server" Width="65px" Height="32px" ></asp:DropDownList><asp:DropDownList ID="DropDownList8" 
                 runat="server" Width="65px" Height="32px"></asp:DropDownList><asp:DropDownList ID="DropDownList9" 
                 runat="server" Width="95px" Height="32px"></asp:DropDownList>
         <br />
         <br />
         
        <asp:Label ID="Label5" runat="server" Text="Password:" Font-Names="Arial" 
             Font-Size="Medium"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox3" runat="server" Height="32px" Width="225px" TextMode="Password"></asp:TextBox>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
         <asp:Label ID="Label18" 
             runat="server" Text="Website:" Font-Names="Arial" Font-Size="Medium"></asp:Label>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox13" runat="server"  
             Height="32px" Width="225px" ></asp:TextBox>
        <br />
         <br />
        <asp:Label ID="Label7" runat="server" Text="Confirm Password:" 
             Font-Names="Arial" Font-Size="Medium"></asp:Label>
       <asp:TextBox ID="TextBox5" runat="server" Width="225px" Height="32px" TextMode="Password"></asp:TextBox> 
       &nbsp;&nbsp;&nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" 
                 ControlToCompare="TextBox3" ControlToValidate="TextBox5" ErrorMessage="*" 
                 ForeColor="Red"></asp:CompareValidator>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label19" runat="server" 
             Text="Registration No:" Font-Names="Arial" Font-Size="Medium"></asp:Label>
        &nbsp;&nbsp;<asp:TextBox ID="TextBox11" runat="server" Height="32px"  Width="225px" ></asp:TextBox>
             <br />
         <br />      
       <asp:Label ID="Label10" runat="server" Text="Address:" Font-Names="Arial" 
             Font-Size="Medium"></asp:Label>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox7" 
                 runat="server" Width="225px" Height="50px" TextMode="MultiLine"></asp:TextBox>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <asp:Label ID="Label1" runat="server" Text="Hotel ID:" Font-Names="Arial" 
             Font-Size="Medium"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
             ID="TextBox4" runat="server" Height="32px"  Width="225px" Enabled="False" ></asp:TextBox> 
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Location:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox14" runat="server" Height="32px" Width="225px" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</asp:TextBox>
            
             <br />
         <br />
            <asp:Label ID="Label21" runat="server" Text="Upload Photo:" Font-Bold="False" 
             Font-Names="Arial" Font-Size="Medium"></asp:Label>
                            <asp:FileUpload ID="FileUpload1" runat="server" Height="29px" 
                               onload="FileUpload1_Load" Width="275px" />
                              <br />
         <br />      
       
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <br />
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
                 ID="Button3" class="btn btn-white py-3 px-4" runat="server"  Text="Submit" 
                                    BorderColor="#CC3300" Height="50px"  Width="225px" onclick="Button3_Click"  
         /> &nbsp;&nbsp;<asp:Button ID="Button4" 
                  class="btn btn-white py-3 px-4" runat="server"  Text="Cancel" BorderColor="#CC3300"  
                                    BorderStyle="Solid" Height="50px"  Width="225px" onclick="Button4_Click"  
        />
        
        <br />
        <br />
         <asp:Label ID="Label11" runat="server" Visible="False"></asp:Label>
          </div>
						
					</form>
							<%--</div>--%>
						<%--</div>--%>
					<%--</div>--%>
				</div>
				</div>
		</div>
	</section>

	<section class="ftco-section ftco-intro" style="background-image: url(images/bg_3.jpg);">
		<div class="overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-12 text-center">
					<span>Now Booking</span>
					<h2>Private Dinners &amp; Happy Hours</h2>
				</div>
			</div>
		</div>
	</section>





	<section class="ftco-section ftco-no-pt ftco-no-pb ftco-intro bg-primary">
		<div class="container py-5">
			<div class="row py-2">
				<div class="col-md-12 text-center">
					<h2>We Make Delicious &amp; Nutritious Food</h2>
				<%--	<a href="#" class="btn btn-white btn-outline-white">Book A Table Now</a>--%>
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
</body>
</html>
