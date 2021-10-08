<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!-- Custom-Files -->
	<link rel="stylesheet" href="css/bootstrap.css">
	<!-- Bootstrap-CSS -->
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
	<!-- Style-CSS -->
	<link href="css/font-awesome.min.css" rel="stylesheet">
	<!-- Font-Awesome-Icons-CSS -->
	<!-- //Custom-Files -->

</head>
<body>
<!-- footer -->
	<footer class="py-5">
		<div class="container pt-xl-5 pt-lg-3">
			<!-- newsletter -->
			<div class="newsletter_right_w3w3pvt-lau pb-5">
				<h2 class="tittle text-wh mb-5 font-weight-bold">Subscribe For Latest Updates</h2>
				<div class="n-right-w3ls pt-3">
					<form action="index.jsp">
						<div class="row">
							<div class="col-md-4 form-group">
								<input class="form-control" type="text" name="Name" placeholder="UserName" required="">
							</div>
							<div class="col-md-4 form-group px-md-0">
								<input class="form-control" type="email" name="Email" placeholder="Email Address"
									required="">
							</div>
							<div class="col-md-4 form-group mt-md-0 mt-3">
								<button class="form-control submit text-uppercase btn" type="submit">Subscribe</button>
							</div>
						</div>
					</form>
				</div>
			</div>
			<!-- //newsletter -->
			<!-- footer bottom -->
			<div class="row pt-xl-5 pt-lg-3">
				<!-- button -->
				<div class="col-lg-5 col-md-7 w3l-footer mt-lg-3 text-md-left text-center">
					<ul class="list-unstyled footer-nav-wthree">
						<li>
							<a href="index.jsp" class="active">Home</a>
						</li>
						<li>
							<a href="about.jsp">About Us</a>
						</li>
						<li>
							<a href="gallery.jsp">Gallery</a>
						</li>
						<li>
							<a href="contact.jsp">Contact Us</a>
						</li>
					</ul>
				</div>
				<!-- //button -->
				<!-- social icons -->
				<div class="col-lg-7 col-md-5 w3social-icons text-md-right text-center mt-md-0 mt-3">
					<ul>
						<li>
							<a href="#" class="rounded-circle">
								<span class="fa fa-facebook-f"></span>
							</a>
						</li>
						<li>
							<a href="#" class="rounded-circle">
								<span class="fa fa-google-plus"></span>
							</a>
						</li>
						<li>
							<a href="#" class="rounded-circle">
								<span class="fa fa-twitter"></span>
							</a>
						</li>
					</ul>
				</div>
				<!-- //social icons -->
			</div>
			<!-- //footer bottom -->
			<!-- copyright -->
			<div class="pt-lg-4 pt-3 text-md-left text-center">
				<p class="copy-right-grids mt-lg-1">© 2019 Dance School. All Rights are Not Reserved | Design by
					<a href="#" target="_blank">Yogi's Creation</a>
				</p>
			</div>
			<!-- //copyright -->
		</div>
	</footer>
	<!-- //footer -->
	<div id="dropDownSelect1"></div>
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
	<script src="vendor/animsition/js/animsition.min.js"></script>
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="vendor/select2/select2.min.js"></script>
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
	<script src="vendor/countdowntime/countdowntime.js"></script>
	<script src="js/main.js"></script>
</body>
</html>