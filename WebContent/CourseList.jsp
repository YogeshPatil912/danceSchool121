<%@ page language="java" import="com.danceClass.pojo.Course,java.util.List,java.util.Iterator" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">
<title>Course List</title>
<style type="text/css">
table,th,td{
	border :3px solid black;
	border-collapse :collapse;
}
table{width: 70%;height: 100px;}
th{text-align: left;}
td,th{padding: 15px;}
tr:hover {
	background-color: #f3befa;
}
th {
	background-color: #4491fc;
}
</style>
<script src="jquery-3.4.1.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$('html, body').animate({
	    scrollTop: $("#fcs").offset().top
	});
	$("#a1").fadeIn(1000);
	$("#a1").fadeOut(3800);
	
});
</script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<% String msg=(String)request.getAttribute("Ad1");
String ext=(String)request.getAttribute("ex");
String noc=(String)request.getAttribute("noc");
%>
<br><div id="fcs"></div>
<%if(msg!=null)
{ %>
<h2 id="a1" style="color: green;" align="center">Course Added To Cart</h2>
<%} %>
<%if(ext!=null)
{ %>
<h2 id="a1" style="color: red;" align="center">Already added to Cart</h2>
<%

} %>
<div align="center" style="background-color: #ffe6f9; width: 100%;height: auto;"><br>
                            <!-- search food  -->
<form action="course">
<input type="hidden" name="Action" value="search">
<div class="row">
<!-- 
							<div class="col-md-4 form-group">
								<input class="form-control" type="text" name="Name" placeholder="UserName" required="">
							</div>
							<div class="col-md-4 form-group px-md-0">
								<input class="form-control" type="email" name="Email" placeholder="Email Address"
									required="">
							</div>
							<div class="col-md-4 form-group mt-md-0 mt-3">
								<button class="form-control submit text-uppercase btn" type="submit">Subscribe</button>
							</div> -->
<div class="col-md-4 form-group">
<div  data-validate = "Enter Course type">
						<select  name="type" class="form-control">
						<option style="color: red;" selected disabled>----Course type----</option>
						<option style="color: blue;" value="Beginner">Beginner</option>
						<option style="color: blue;" value="Intermediate">Intermediate</option>
						<option style="color: blue;" value="Advance">Advance</option>
						</select>	
					</div>
					</div>
<div class="col-md-4 form-group">
<div  data-validate="Enter Dance Category">
						<select  name="cat" class="form-control">
						<option style="color: red;" selected disabled>--Select Dance Category--</option>
						<option style="color: blue;" value="Zumba">Zumba</option>
						<option style="color: blue;" value="HipHop">Hip Hop</option>
						<option style="color: blue;" value="Group">Group</option>
						<option style="color: blue;" value="Ballet">Ballet</option>
						</select>
					</div>
					</div>
						<div class="col-md-4 form-group mt-md-0 mt-3">
								<button class="form-control submit text-uppercase btn" type="submit">Search</button>
							</div>
					</div>
</form>

<% List<Course>clist=(List)session.getAttribute("clist");
String b=(String)session.getAttribute("aname");
String u=(String)session.getAttribute("uname");
%>
<%if(noc!=null)
{ %>
<h2 id="a1" style="color: red;" align="center">No Courses Available To this Filter</h2>
<%} 
else{%>

<center>
<table border="2" cellpadding="5" >
<tr>
<th autofocus>Course type</th>
<th>Dance category</th>
<th> Batch</th>
<th> Price</th>
<th>Course duration</th>
<%if(b!=null){ %>
<th colspan="2">Action</th>
<%} %>
<%if(b==null && u!=null){ %>
<th >Add Cart</th>
<%} %>
</tr>
<%
Iterator<Course>it=clist.iterator(); 
while(it.hasNext())
{
	Course c=it.next();
%>
<tr>
<td><%=c.getCtype() %></td>
<td><%=c.getCdancecat() %></td>
<td><%=c.getCbatch() %></td>
<td><%=c.getCprice()%></td>
<td><%=c.getCduration() %></td>
<%if(b!=null){ %>
<td><a href="course?Action=edit&cid=<%=c.getCid() %>">edit</a></td>
<td><a href="course?Action=delete&cid=<%=c.getCid() %>">delete</a></td>
<%} %>
<%if(b==null && u!=null){ %>
<td><a href="cart?Action=addCart&courseId=<%=c.getCid()%>">AddCart</a></td>
<%
System.out.println("course Id : "+c.getCid());
} %>
</tr>
<%
}

%>
</table>
</center>
<%} %>
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