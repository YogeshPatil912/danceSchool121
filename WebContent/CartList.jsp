<%@ page language="java" import="com.danceClass.pojo.Course,java.util.List,java.util.Iterator" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cart List</title>
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

#btn{
background: none;
color: #ccc;
width: 180px;
height: 50px;
border: 1px solid green;
font-size: 18px;
border-radius: 4px;
transition: .6s;
overflow: hidden;
}
#btn:hover {
	background: #338033;
	cursor: pointer;
}
#btn:focus {
	outline: none;
}
#btn {
	background: #f04b26;	
}

</style>
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
<form action="cart" method="post">
<div id="fcs"></div>
<br>
<center>
<%
List<Course>l=(List)session.getAttribute("cartlist"); 
if(l.size()<1)
{
%>
<b style="color: red;">Sorry Nothing in Your Cart</b>
<% }
else
{
%>
<table border="2" cellpadding="5">
<tr>
<th>Course id</th>
<th>Course type</th>
<th>Course category</th>
<th> batch</th>
<th> Duration</th>
<th> Price</th> 
<th>Action</th>
</tr>
<% 
Iterator<Course>it=l.iterator();
while(it.hasNext()){
	Course c=it.next();

%>

<tr>
<td><%out.println(c.getCid()); %></td>
<td><%=c.getCtype() %></td>
<td><%=c.getCdancecat() %></td>
<td><%=c.getCbatch() %></td>
<td><%=c.getCduration() %></td>
<td><%=c.getCprice() %>
<input type="hidden" name="price" value="<%=c.getCprice()%>"></td>
<td><a href="cart?Action=delete&courseId=<%=c.getCid() %>">Delete</a></td>
</tr>
<% } %>
</table>
<br>
<input type="submit" name="ord" id="btn" value="MakePayment">
<%} %>
</center>
<br>
</form>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>