<%@ page language="java" import="com.danceClass.pojo.Course" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Course</title>
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
<%Course c=(Course)session.getAttribute("c"); %>
<div class="limiter">
		<div class="container-login100" style="background-image: url('images/bg-01.jpg');">
			<div class="wrap-login100">
				<form class="login100-form validate-form" action="course" method="post">
				<div id="fcs"></div>
				<input type="hidden" name="Action" value="edit">
				<input type="hidden" name="cid" value="<%=c.getCid()%>">
					<span class="login100-form-logo">
						<i class="zmdi zmdi-landscape"></i>
					</span>
					<span class="login100-form-title p-b-34 p-t-27">
						Update Course
					</span>
					<div class="wrap-input100 validate-input" data-validate = "Enter Course type">
						<select class="input100" name="ctype">
						<option style="color: red;" selected disabled>---Course type---</option>
						<option style="color: blue;" selected="selected" value="<%=c.getCtype()%>"><%=c.getCtype()%></option>
						<option style="color: blue;" value="Beginner">Beginner</option>
						<option style="color: blue;" value="Intermediate">Intermediate</option>
						<option style="color: blue;" value="Advance">Advance</option>
						</select>
						<span class="focus-input100" data-placeholder="&#xf207;"></span>
					</div>						
					<div class="wrap-input100 validate-input" data-validate="Enter Dance Category">
						<select class="input100" name="cdancecat">
						<option style="color: red;" selected disabled>--Select Dance Category--</option>
						<option style="color: blue;" selected="selected" value="<%=c.getCdancecat()%>"><%=c.getCdancecat()%></option>
						<option style="color: blue;" value="Zumba">Zumba</option>
						<option style="color: blue;" value="HipHop">Hip Hop</option>
						<option style="color: blue;" value="Group">Group</option>
						<option style="color: blue;" value="Ballet">Ballet</option>
						</select>
						<span class="focus-input100" data-placeholder="&#xf207;"></span>
					</div>
					<div class="wrap-input100 validate-input" data-validate = "select Batch">
						
						<select class="input100" name="cbatch">
						<option style="color: red;" selected disabled>---Select batch---</option>
						<option style="color: blue;" selected="selected" value="<%=c.getCbatch()%>"><%=c.getCbatch()%></option>
						<option style="color: blue;" value="8-10am">8-10 am</option>
						<option style="color: blue;" value="7-11am">7-11 am</option>
						<option style="color: blue;" value="10-12am">10-12 am</option>
						<option style="color: blue;" value="5-7pm">5-7 pm</option>
						<option style="color: blue;" value="11-4pm">11-4 pm</option>
						<option style="color: blue;" value="4-8pm">4-8 pm</option>
						</select>
						<span class="focus-input100" data-placeholder="&#xf207;"></span>
					</div>
					<div class="wrap-input100 validate-input" data-validate="please enter price">
						<input class="input100" type="number" name="cprice" placeholder="Course price">
						<span class="focus-input100" data-placeholder="&#xf207;"></span>
					</div>	
					<div class="wrap-input100 validate-input" data-validate="Address is required">
						<select class="input100"  name="cduration">
						<option style="color: red;" selected disabled>---Select duration---</option>
						<option style="color: blue;" selected="selected" value="<%=c.getCduration()%>"><%=c.getCduration()%></option>
						<option style="color: blue;" value="2mon">2 months</option>
						<option style="color: blue;" value="4mon">4 months</option>
						<option style="color: blue;" value="5mon">5 months</option>
						<option style="color: blue;" value="6mon">6 months</option>
						</select>
						<span class="focus-input100" data-placeholder="&#xf207;"></span>
					</div>
					<div class="container-login100-form-btn">
						<button class="login100-form-btn">
							Update
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