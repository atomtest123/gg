﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="VisistorViewFoodMenu.aspx.cs" Inherits="VisistorViewFoodMenu" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Taste.it - Free Bootstrap 4 Template by Colorlib</title>
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
                    <li class="nav-item"><a href="VisistorViewFoodMenu.aspx" class="nav-link">Top Recomended</a></li>
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
		
                <div class="col-sm-8 wrap-about py-5 ftco-animate img">
					<div class="row pb-5 pb-md-0">
						<div class="col-md-12 col-lg-7">
							<div class="heading-section mt-5 mb-4">
								<div class="pl-lg-3 ml-md-5">
									<span class="subheading">Top Recommended</span>
								
								</div>
							</div>
							
								 
                    
                     <form id="form1" runat="server">
                       <div style="Width:1400px;text-align:left;padding-left: 100px;">
                      <div class="row">
                      
                        
              <div class="col-lg-6 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <h4 class="text-success">Starters</h4>
                    <%--<p class="card-description"> Add class <code>.table</code>
                    </p>--%>
                     <asp:DataList ID="DataList1" runat="server" DataKeyField="hmid"  >
                        <HeaderTemplate>
                    <table class="table">
                      <thead>
                        <tr>
                          <th>Menu ID</th>
                          <th>Name</th> 
                          <th>Hotel</th>    
                          <th>Type</th>
                          <th>Image</th>
                           <th>Price</th>
                        </tr>
                      </thead>
                       </HeaderTemplate>
            <ItemTemplate>
                     <%-- <tbody>--%>
                        <tr>
                          <td> <%# Eval("hmid")%></td>
                          <td><%# Eval("fname")%></td>
                           <td><%# Eval("huname")%></td>
                          <td><%# Eval("ftype")%></td>
                          <td> <asp:Image ID="imgEmp" runat="server" Width="50px" Height="50px" ImageUrl='<%# Bind("img") %>'/><br /></td>
                           <td class="text-success"> Rs.<%# Eval("price")%> /-</td>
                        </tr>
                        
                    <%--  </tbody>--%>
                        </ItemTemplate>
      
        </asp:DataList>
                    </table>
                  </div>
                </div>
              </div>
              <div class="col-lg-6 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <h4 class="text-success">Breads</h4>
                    <%--<p class="card-description"> Add class <code>.table-hover</code>
                    </p>--%>
                     <asp:DataList ID="DataList2" runat="server" DataKeyField="hmid"  >
                        <HeaderTemplate>
                    <table class="table table-hover">
                       <thead>
                        <tr>
                          <th>Menu ID</th>
                          <th>Name</th> 
                           <th>Hotel</th>       
                          <th>Type</th>
                          <th>Image</th>
                           <th>Price</th>
                        </tr>
                      </thead>
                       </HeaderTemplate>
            <ItemTemplate>
                      <%--<tbody>--%>
                        <tr>
                          <td> <%# Eval("hmid")%></td>
                          <td><%# Eval("fname")%></td>
                           <td><%# Eval("huname")%></td>
                          <td><%# Eval("ftype")%></td>
                          <td> <asp:Image ID="imgEmp" runat="server" Width="50px" Height="50px" ImageUrl='<%# Bind("img") %>'/><br /></td>
                           <td class="text-success">Rs.<%# Eval("price")%> /-</td>
                        </tr>
                        
                      <%--</tbody>--%>
                        </ItemTemplate>
      
        </asp:DataList>
                    </table>
                  </div>
                </div>
              </div>
              </div>
                              <div class="row">
              <div class="col-lg-6 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <h4 class="text-success">Curries</h4>
                    <%--<p class="card-description"> Add class <code>.table</code>
                    </p>--%>
                     <asp:DataList ID="DataList3" runat="server" DataKeyField="hmid"  >
                        <HeaderTemplate>
                    <table class="table">
                      <thead>
                        <tr>
                          <th>Menu ID</th>
                          <th>Name</th> 
                           <th>Hotel</th>       
                          <th>Type</th>
                          <th>Image</th>
                           <th>Price</th>
                        </tr>
                      </thead>
                       </HeaderTemplate>
            <ItemTemplate>
                     <%-- <tbody>--%>
                        <tr>
                          <td> <%# Eval("hmid")%></td>
                          <td><%# Eval("fname")%></td>
                           <td><%# Eval("huname")%></td>
                          <td><%# Eval("ftype")%></td>
                          <td> <asp:Image ID="imgEmp" runat="server" Width="50px" Height="50px" ImageUrl='<%# Bind("img") %>'/><br /></td>
                           <td class="text-success"> Rs.<%# Eval("price")%> /-</td>
                        </tr>
                        
                    <%--  </tbody>--%>
                        </ItemTemplate>
      
        </asp:DataList>
                    </table>
                  </div>
                </div>
              </div>
              <div class="col-lg-6 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <h4 class="text-success">Biryani</h4>
                    <%--<p class="card-description"> Add class <code>.table-hover</code>
                    </p>--%>
                     <asp:DataList ID="DataList4" runat="server" DataKeyField="hmid"  >
                        <HeaderTemplate>
                    <table class="table table-hover">
                       <thead>
                        <tr>
                          <th>Menu ID</th>
                          <th>Name</th> 
                           <th>Hotel</th>       
                          <th>Type</th>
                          <th>Image</th>
                           <th>Price</th>
                        </tr>
                      </thead>
                       </HeaderTemplate>
            <ItemTemplate>
                      <%--<tbody>--%>
                        <tr>
                          <td> <%# Eval("hmid")%></td>
                          <td><%# Eval("fname")%></td>
                           <td><%# Eval("huname")%></td>
                          <td><%# Eval("ftype")%></td>
                          <td> <asp:Image ID="imgEmp" runat="server" Width="50px" Height="50px" ImageUrl='<%# Bind("img") %>'/><br /></td>
                           <td class="text-success">Rs.<%# Eval("price")%> /-</td>
                        </tr>
                        
                      <%--</tbody>--%>
                        </ItemTemplate>
      
        </asp:DataList>
                    </table>
                  </div>
                </div>
              </div>
              </div>
                               <div class="row">
              <div class="col-lg-6 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <h4 class="text-success">Sea Foods</h4>
                    <%--<p class="card-description"> Add class <code>.table</code>
                    </p>--%>
                     <asp:DataList ID="DataList5" runat="server" DataKeyField="hmid"  >
                        <HeaderTemplate>
                    <table class="table">
                      <thead>
                        <tr>
                          <th>Menu ID</th>
                          <th>Name</th>   
                           <th>Hotel</th>     
                          <th>Type</th>
                          <th>Image</th>
                           <th>Price</th>
                        </tr>
                      </thead>
                       </HeaderTemplate>
            <ItemTemplate>
                     <%-- <tbody>--%>
                        <tr>
                          <td> <%# Eval("hmid")%></td>
                          <td><%# Eval("fname")%></td>
                           <td><%# Eval("huname")%></td>
                          <td><%# Eval("ftype")%></td>
                          <td> <asp:Image ID="imgEmp" runat="server" Width="50px" Height="50px" ImageUrl='<%# Bind("img") %>'/><br /></td>
                           <td class="text-success"> Rs.<%# Eval("price")%> /-</td>
                        </tr>
                        
                    <%--  </tbody>--%>
                        </ItemTemplate>
      
        </asp:DataList>
                    </table>
                  </div>
                </div>
              </div>
              <div class="col-lg-6 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <h4 class="text-success">Chicken Items</h4>
                    <%--<p class="card-description"> Add class <code>.table-hover</code>
                    </p>--%>
                     <asp:DataList ID="DataList6" runat="server" DataKeyField="hmid"  >
                        <HeaderTemplate>
                    <table class="table table-hover">
                       <thead>
                        <tr>
                          <th>Menu ID</th>
                          <th>Name</th>
                           <th>Hotel</th>        
                          <th>Type</th>
                          <th>Image</th>
                           <th>Price</th>
                        </tr>
                      </thead>
                       </HeaderTemplate>
            <ItemTemplate>
                      <%--<tbody>--%>
                        <tr>
                          <td> <%# Eval("hmid")%></td>
                          <td><%# Eval("fname")%></td>
                           <td><%# Eval("huname")%></td>
                          <td><%# Eval("ftype")%></td>
                          <td> <asp:Image ID="imgEmp" runat="server" Width="50px" Height="50px" ImageUrl='<%# Bind("img") %>'/><br /></td>
                           <td class="text-success">Rs.<%# Eval("price")%> /-</td>
                        </tr>
                        
                      <%--</tbody>--%>
                        </ItemTemplate>
      
        </asp:DataList>
                    </table>
                  </div>
                </div>
              </div>
              </div>
                         <div class="row">
              <div class="col-lg-6 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <h4 class="text-success">Juice</h4>
                    <%--<p class="card-description"> Add class <code>.table</code>
                    </p>--%>
                     <asp:DataList ID="DataList7" runat="server" DataKeyField="hmid"  >
                        <HeaderTemplate>
                    <table class="table">
                      <thead>
                        <tr>
                          <th>Menu ID</th>
                          <th>Name</th>  
                           <th>Hotel</th>      
                          <th>Type</th>
                          <th>Image</th>
                           <th>Price</th>
                        </tr>
                      </thead>
                       </HeaderTemplate>
            <ItemTemplate>
                     <%-- <tbody>--%>
                        <tr>
                          <td> <%# Eval("hmid")%></td>
                          <td><%# Eval("fname")%></td>
                           <td><%# Eval("huname")%></td>
                          <td><%# Eval("ftype")%></td>
                          <td> <asp:Image ID="imgEmp" runat="server" Width="50px" Height="50px" ImageUrl='<%# Bind("img") %>'/><br /></td>
                           <td class="text-success"> Rs.<%# Eval("price")%> /-</td>
                        </tr>
                        
                    <%--  </tbody>--%>
                        </ItemTemplate>
      
        </asp:DataList>
                    </table>
                  </div>
                </div>
              </div>
              <div class="col-lg-6 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <h4 class="text-success">Desserts</h4>
                    <%--<p class="card-description"> Add class <code>.table-hover</code>
                    </p>--%>
                     <asp:DataList ID="DataList8" runat="server" DataKeyField="hmid"  >
                        <HeaderTemplate>
                    <table class="table table-hover">
                       <thead>
                        <tr>
                          <th>Menu ID</th>
                          <th>Name</th>  
                           <th>Hotel</th>      
                          <th>Type</th>
                          <th>Image</th>
                           <th>Price</th>
                        </tr>
                      </thead>
                       </HeaderTemplate>
            <ItemTemplate>
                      <%--<tbody>--%>
                        <tr>
                          <td> <%# Eval("hmid")%></td>
                          <td><%# Eval("fname")%></td>
                           <td><%# Eval("huname")%></td>
                          <td><%# Eval("ftype")%></td>
                          <td> <asp:Image ID="imgEmp" runat="server" Width="50px" Height="50px" ImageUrl='<%# Bind("img") %>'/><br /></td>
                           <td class="text-success">Rs.<%# Eval("price")%> /-</td>
                        </tr>
                        
                      <%--</tbody>--%>
                        </ItemTemplate>
      
        </asp:DataList>
                    </table>
                  </div>
                </div>
              </div>
              </div>
                 </div>
                     </form>
							</div>
						<%--</div>
					</div>
				</div>
			</div>
		</div>--%>
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
					<%--<a href="#" class="btn btn-white btn-outline-white">Book A Table Now</a>--%>
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
							<li class="d-flex"><span>Sunday</span><span> 9:00 - 02:00</span></li>
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
