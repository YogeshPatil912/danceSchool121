<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Customer</title>
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
	
    $cf = $('#cnt');
    $cf.focusout(function(e){
        phone = $(this).val();
        phone = phone.replace(/[^0-9]/g,'');
        if (phone.length != 10)
        {
            $('#cc').val('not proper Connn');
            $('#cnt').val('');
            $('#cnt').focus();
        }
    }); 
    
});
</script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="limiter">
		<div class="container-login100" style="background-image: url('images/bg-01.jpg');">
			<div class="wrap-login100">
				<form class="login100-form validate-form" action="Customer" method="post">
				<input type="hidden" name="Action" value="add">
				<div id="fcs"></div>
					<span class="login100-form-logo">
						<i class="zmdi zmdi-landscape"></i>
					</span>
					<span class="login100-form-title p-b-34 p-t-27">
						Add Customer
					</span>
					<div class="wrap-input100 validate-input" data-validate = "Enter username">
						<input class="input100" type="text" name="custUname" placeholder="Username" autocomplete="username" required>
						<span class="focus-input100" data-placeholder="&#xf207;"></span>
					</div>						
					<div class="wrap-input100 validate-input" data-validate="Enter password">
						<input class="input100" id="showPs" type="password" name="custpassword" placeholder="Password">
						<span class="focus-input100" data-placeholder="&#xf191;"></span>
					</div>
					<div class="contact100-form-checkbox">
						<input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me" onclick="showpass();">
						<label class="label-checkbox100" for="ckb1">
							show password
						</label>
					</div>
					<div class="wrap-input100 validate-input" data-validate="Name is required">
						<input class="input100" type="text" name="custname" placeholder="Full Name">
						<span class="focus-input100" data-placeholder="&#xf207;"></span>
					</div>
					<div class="wrap-input100 validate-input" data-validate = "Enter email">
						<input class="input100" type="email" name="custemail" placeholder="e-mail" autocomplete="email">
						<span class="focus-input100" data-placeholder="&#xf207;"></span>
					</div>
					<div class="wrap-input100 " data-validate="please enter contactNo.">
						<input class="input100" id="cnt" type="number" pattern="[7-9]{1}[0-9]{9}  name="custcontact" placeholder="Contact Number">
						<span class="focus-input100"  data-placeholder="&#xf207;"></span>
					</div>
					<h6 style="color: #cc0000;">Note: Contact should be in proper format</h6>	<br>
					<div class="wrap-input100 validate-input" data-validate="Address is required">
						<textarea class="input100" rows="3" cols="5" name="custaddres" placeholder="Address"></textarea>
						<span class="focus-input100" data-placeholder="&#xf207;"></span>
					</div>
					<div class="container-login100-form-btn">
						<button class="login100-form-btn">
							Register
						</button>
					</div>
					<div class="text-center p-t-90">
						back to -
						<a class="txt1" href="Login.jsp">
							Login
						</a>
					</div>
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