<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="keywords"
		content="Dance School Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!-- //Meta tag Keywords -->

	<!-- Custom-Files -->
	<link rel="stylesheet" href="css/bootstrap.css">
	<!-- Bootstrap-CSS -->
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
	<!-- Style-CSS -->
	<link href="css/font-awesome.min.css" rel="stylesheet">
	<!-- Font-Awesome-Icons-CSS -->
	<!-- //Custom-Files -->
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body>

 <div class="main-banner" id="home">
<!-- header -->
<%
 String user=(String)session.getAttribute("uname");
 String admin=(String)session.getAttribute("aname");
 %>
		<header>
			<div class="container">
				<div class="header d-md-flex justify-content-between align-items-center py-3">
					<!-- logo -->
					<div id="logo">
						<h1><a href="index.jsp" class="font-weight-bold">Dance School
								<span class="text-capitalize">Lets Dance With Us</span>
							</a>
						</h1>
					</div>
					<!-- //logo -->
					<!-- nav -->
					
					<%if(user==null && admin==null){ %>
					<div class="nav_w3ls">
						<nav>
							<label for="drop" class="toggle">Menu</label>
							<input type="checkbox" id="drop" />
							<ul class="menu">
								<li>
									<!-- First Tier Drop Down -->
									<label for="drop-2" class="toggle toogle-2">Dropdown <span class="fa fa-angle-down"
											aria-hidden="true"></span>
									</label>
									<a href="#"> <span class="fa fa-bars" aria-hidden="true"></span></a>
									<input type="checkbox" id="drop-2" />
									<ul>
										<li><a href="about.jsp" class="drop-text">Trainers</a></li>
										<li><a href="gallery.jsp" class="drop-text">Gallery</a></li>
									</ul>
								</li>
								<li><a href="index.jsp">Home</a></li>
								<li><a href="course" class="drop-text">Course List</a></li>
								<li><a href="AddCustomer.jsp" class="drop-text">Register</a></li>
								<li><a href="Login.jsp" class="drop-text">Login</a></li>
								<li><a href="about.jsp">About Us</a></li>
							</ul>
						</nav>
					</div>
					<%} %>
					<%if(user!=null && admin==null){ %>
					<div class="nav_w3ls">
						<nav>
							<label for="drop" class="toggle">Menu</label>
							<input type="checkbox" id="drop" />
							<ul class="menu">
								<li>
									<!-- First Tier Drop Down -->
									<label for="drop-2" class="toggle toogle-2">Dropdown <span class="fa fa-angle-down"
											aria-hidden="true"></span>
									</label>
									<a href="#"> <span class="fa fa-bars" aria-hidden="true"></span></a>
									<input type="checkbox" id="drop-2" />
									<ul>
										<li><a href="about.jsp" class="drop-text">Trainers</a></li>
										<li><a href="gallery.jsp" class="drop-text">Gallery</a></li>
										<li><a href="contact.jsp" class="drop-text">Contact Us</a></li>
										<li><a href="about.jsp" class="drop-text">About Us</a></li>
									</ul>
								</li>
								<li><a href="index.jsp">Home</a></li>
								<li><a href="Customer?Action=update&CustEmailId=<%=user%>" class="drop-text">UpdateInfo</a></li>
								<li><a href="ChangePassword.jsp" class="drop-text">ChangePassword</a></li>
								<li><a href="course" class="drop-text">Courses</a></li>
								<li><a href="payment?Action=searchId" class="drop-text">Booking's</a></li>
								<li><a href="cart" class="drop-text"><img src="images/icons/cart.png" style="width: 35px;height: 35px;"></a></li>
							    <li><a href="logout.jsp"><img src="images/icons/log.png" style="width: 35px;height: 35px;"></a></li>
							</ul>
						</nav>
					</div>
					<%} %>
					<%if(user==null && admin!=null){ %>
					<div class="nav_w3ls">
						<nav>
							<label for="drop" class="toggle">Menu</label>
							<input type="checkbox" id="drop" />
							<ul class="menu">
								<li>
									<!-- First Tier Drop Down -->
									<label for="drop-2" class="toggle toogle-2">Dropdown <span class="fa fa-angle-down"
											aria-hidden="true"></span>
									</label>
									<a href="#"> <span class="fa fa-bars" aria-hidden="true"></span></a>
									<input type="checkbox" id="drop-2" />
									<ul>
										<li><a href="about.jsp" class="drop-text">About Us</a></li>
										<li><a href="gallery.jsp" class="drop-text">Gallery</a></li>
									</ul>
								</li>
								<!-- <li><a href="index.jsp">Home</a></li> -->
								<li><a href="AddCourse.jsp" class="drop-text">AddCourse</a></li>
								<li><a href="course" class="drop-text">Courses</a></li>
								<li><a href="Customer" class="drop-text">Customers</a></li>
								<!-- <li><a href="UpdateCourse.jsp" class="drop-text">UpdatCourse</a></li> -->
								<li><a href="payment" class="drop-text">showBookings</a></li>
								<li><a href="logout.jsp"><img src="images/icons/log.png" style="width: 35px;height: 35px;"></a></li>
							</ul>
						</nav>
					</div>
					<%} %>
					<!-- //nav -->
				</div>
			</div>
		</header>
		<!-- //header -->
		<!-- banner -->
		<div class="main-w3pvt">
			<div class="container">
				<div class="style-banner">
					<h3 class="text-wh font-weight-bold text-uppercase">Be in the <span>Spotlight</span> </h3>
					<p class="mt-5 text-li">Let's dance with us and hold your beloved moments</p>
					<a href="about.jsp" class="btn button-style mt-sm-5 mt-4">Read More</a>
				</div>
			</div>
		</div>
		<div class="img-banner-w3">
			<img src="images/dancer4.png" alt="" class="img-fluid" style="width: 480px;height: 630px;">
		</div>
		<!-- //banner -->
</div>
</body>
</html>