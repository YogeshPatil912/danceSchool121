<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="keywords"
		content="Dance School Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<title>Contact Us</title>	
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

	<!-- Web-Fonts -->
	<!-- //Web-Fonts -->
</head>

<body>
	<!-- main -->
	<div class="main-banner-2" id="home">
		<!-- header -->
		<header>
			<div class="container">
				<div class="header d-md-flex justify-content-between align-items-center py-3">
					<!-- logo -->
					<div id="logo">
						<h1><a href="index.jsp" class="font-weight-bold">Dance School
								<span class="text-capitalize">Let's Dance With Us</span>
							</a>
						</h1>
					</div>
					<!-- //logo -->
					<!-- nav -->
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
										<li><a href="index.jsp" class="drop-text">Dance Classes</a></li>
										<li><a href="about.jsp" class="drop-text">Trainers</a></li>
										<li><a href="gallery.jsp" class="drop-text">Gallery</a></li>
										<li><a href="contact.jsp" class="drop-text">Contact Us</a></li>
									</ul>
								</li>
								<li><a href="index.jsp">Home</a></li>
								<li><a href="gallery.jsp" class="drop-text">Gallery</a></li>
								<li><a href="contact.jsp" class="drop-text">Contact Us</a></li>
								<li><a href="about.jsp">About Us</a></li>
							</ul>
						</nav>
					</div>
					<!-- //nav -->
				</div>
			</div>
		</header>
		<!-- //header -->
	</div>
	<!-- //main -->
	<!-- page details -->
	<div class="breadcrumb-w3ls py-1">
		<div class="container">
			<ol class="breadcrumb m-0">
				<li class="breadcrumb-item">
					<a href="index.jsp">Home</a>
				</li>
				<li class="breadcrumb-item active" aria-current="page">Contact Us</li>
			</ol>
		</div>
	</div>
	<!-- //page details -->

	<!-- contact  -->
	<section class="contact py-5">
		<div class="container py-xl-5 py-lg-3">
			<h3 class="title-w3 mb-5 font-weight-bold">Contact Us</h3>
			<div class="row">
				<!-- contact form -->
				<div class="col-lg-6 contact-us1-bottom w3layouts-w3ls">
					<form action="#" method="post">
						<div class="form-group">
							<input type="text" class="form-control" placeholder="Name" name="name" required="">
						</div>
						<div class="form-group">
							<input type="email" class="form-control" placeholder="Email" name="email" required="">
						</div>
						<div class="form-group">
							<textarea class="form-control" placeholder="Message" name="message" required=""></textarea>
						</div>
						<button type="submit" class="btn">Submit</button>
					</form>
				</div>
				<!-- //contact form -->
				<!-- contact address -->
				<div class="col-lg-6 home-radio-clock mt-lg-0 mt-5">
					<h3 class="tittle text-bl mb-5 font-weight-bold">Get In Touch</h3>
					<div class="row">
						<div class="col-4">
							<ul class="list-unstyled">
								<li><span class="fa fa-envelope mr-2" aria-hidden="true"></span>Address</li>
								<li class="mt-5"><span class="fa fa-phone mr-2" aria-hidden="true"></span>Call Us</li>
								<li class="mt-5"><span class="fa fa-clock-o mr-2" aria-hidden="true"></span>Opening Time
								</li>
							</ul>
						</div>
						<div class="col-8">
							<div class="home-radio-clock-right">
								<ul class="list-unstyled">
									<li>sector-1 C.B.D belapur,
										<br>Navi Mumbai, INDIA</li>
									<li class="my-4"> 9594196512
										<br>(022) 123-456-78
									</li>
									<li>Mon-Sat:<br>8am-10pm</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<!-- //contact address -->
			</div>
		</div>
	</section>
	<!-- map -->
	<!-- <div class="map p-2">
		<iframe
			src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d26359195.17562375!2d-113.7156245614499!3d36.2473834534249!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x54eab584e432360b%3A0x1c3bb99243deb742!2sUnited+States!5e0!3m2!1sen!2sin!4v1471497559566"
			style="border:0" allowfullscreen=""></iframe>
	</div> -->
	<!-- //map -->
	<!-- //contact -->

	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>