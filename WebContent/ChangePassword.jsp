<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Change Password</title>
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
function chk(){
	var p1=document.getElementById('Ps1').value;
	var p2=document.getElementById('Ps2').value;
	if(p1==p2)
		return true;
	else
		{
			document.getElementById("Err").innerHTML="Both password not matched";
			return false;
		}
	return true;
}

function showpass(){
	var ps=document.getElementById('showPs');
	if(ps.type == "text")
		ps.type = "password";
	else
		ps.type = "text";
	
}
</script>
<script src="jquery-3.4.1.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$('html, body').animate({
	    scrollTop: $("#fcs").offset().top
	});
	$("#a1").fadeIn(1000);
	$("#a1").fadeOut(2000);
});
</script>
</head>
<body>
<%String uname=(String)session.getAttribute("uname"); 
String msg=(String)request.getAttribute("pwd");
%>
<jsp:include page="header.jsp"></jsp:include>
<br><div id="fcs"></div>
<%if(msg!=null)
{ %>
<h2 id="a1" style="color: red;" align="center">Failed To Change Password</h2>
<%} %>
	<div class="limiter">
		<div class="container-login100" style="background-image: url('images/bg-01.jpg');">
			<div class="wrap-login100">
				<form class="login100-form validate-form" onsubmit="return chk()"  action="CommonLogin" method="post">
				<input type="hidden" name="Action" value="change">
					<span class="login100-form-logo">
						<i class="zmdi zmdi-landscape"></i>
					</span>

					<span class="login100-form-title p-b-34 p-t-27">
						Log in
					</span>

					<div class="wrap-input100 validate-input" data-validate = "Enter username">
						<input class="input100" type="text" name="u" value="<%=uname%>" disabled>
						<input type="hidden" name="uname" value="<%=uname%>">
						<span class="focus-input100" data-placeholder="&#xf207;"></span>
					</div>
						
					<div class="wrap-input100 validate-input" data-validate="Enter password">
						<input class="input100" id="showPs" type="password" name="password" placeholder="Old Password">
						<span class="focus-input100" data-placeholder="&#xf191;"></span>
					</div>
					<div class="wrap-input100 validate-input" data-validate="Enter password">
						<input class="input100" id="Ps1" type="password" name="newpassword" placeholder="New Password">
						<span class="focus-input100" data-placeholder="&#xf191;"></span>
					</div>
					<div class="wrap-input100 validate-input" data-validate="Enter password">
						<input class="input100" id="Ps2" type="password" name="newpasswordC" placeholder="Conform Password">
						<span class="focus-input100" data-placeholder="&#xf191;"></span>
					</div>
					<div class="contact100-form-checkbox">
						<input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me" onclick="showpass();">
						<label class="label-checkbox100" for="ckb1">
							show password
						</label>
					</div>
					 <div class="text-center p-t-90">
					<span id="Err" style="color: yellow;"></span>
						
					</div>
					<div class="container-login100-form-btn">
						<button class="login100-form-btn">
							ChangePassword
						</button>
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