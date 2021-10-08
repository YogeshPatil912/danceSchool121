<%@ page language="java" import="com.danceClass.pojo.Customer" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Customer</title>
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
<script>
function showpass(){
	var ps=document.getElementById('showPs');
	if(ps.type == "text")
		ps.type = "password";
	else
		ps.type = "text";
}
</script>
<script src="jquery-3.4.1.js"></script>
<script>
$(document).ready(function() {
	$('html, body').animate({
	    scrollTop: $("#fcs").offset().top
	});
});
</script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<%Customer c=(Customer)session.getAttribute("custlist");  %>
<div class="limiter">
		<div class="container-login100" style="background-image: url('images/bg-01.jpg');">
			<div class="wrap-login100">
				<form class="login100-form validate-form" action="Customer" method="post">
				<div id="fcs"></div>
				<input type="hidden" name="Action" value="update">
					<span class="login100-form-logo">
						<i class="zmdi zmdi-landscape"></i>
					</span>
					<span class="login100-form-title p-b-34 p-t-27">
						Add Customer
					</span>
					<div class="wrap-input100 validate-input" data-validate = "Enter username">
						<input class="input100" type="hidden" name="custUname" placeholder="Username" value="<%=c.getCustUname()%>">
						<span class="focus-input100" data-placeholder="&#xf207;"></span>
						<input class="input100" type="text" name="u" value="<%=c.getCustUname()%>" disabled>
					</div>						
					<div class="wrap-input100 validate-input" data-validate="Enter password">
						<input class="input100" id="showPs" type="password" name="custpassword" placeholder="Password" value="<%=c.getCustPassword()%>">
						<span class="focus-input100" data-placeholder="&#xf191;"></span>
					</div>
					<div class="contact100-form-checkbox">
						<input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me" onclick="showpass();">
						<label class="label-checkbox100" for="ckb1">
							show password
						</label>
					</div>
					<div class="wrap-input100 validate-input" data-validate="Name is required">
						<input class="input100" type="text" name="custname" placeholder="Full Name" value="<%=c.getCustName()%>">
						<span class="focus-input100" data-placeholder="&#xf207;"></span>
					</div>
					<div class="wrap-input100 validate-input" data-validate = "Enter email">
						<input class="input100" type="email" name="custemail" placeholder="e-mail" value="<%=c.getCustEmailid()%>">
						<span class="focus-input100" data-placeholder="&#xf207;"></span>
					</div>
					<div class="wrap-input100 validate-input" data-validate="please enter contactNo.">
						<input class="input100" type="number" name="custcontact" placeholder="Contact Number" value="<%=c.getCustContact()%>">
						<span class="focus-input100" data-placeholder="&#xf207;"></span>
					</div>	
					<div class="wrap-input100 validate-input" data-validate="Name is required">
						<textarea class="input100" rows="3" cols="5" name="custaddres" placeholder="Address" value="<%=c.getCustAddress()%>"></textarea>
						<span class="focus-input100" data-placeholder="&#xf207;"></span>
					</div>
					<div class="container-login100-form-btn">
						<button class="login100-form-btn">
							Update
						</button>
					</div>
					<!-- <div class="text-center p-t-90">
						dont have an account ?
						<a class="txt1" href="#">
							Sign in
						</a>
					</div> -->
				</form>
			</div>
		</div>
	</div>
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
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>