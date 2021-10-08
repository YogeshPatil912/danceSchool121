<%@ page language="java" import="com.danceClass.pojo.Payment,java.util.List,java.util.Iterator" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PaymentList</title>
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
<div id="fcs"></div><br><br>
<center>
<%
List<Payment>l=(List)session.getAttribute("plist");
String u=(String)session.getAttribute("aname");
if(l.size()<1)
{
%>
<b>Sorry Nothing in Your Bookings !!</b>
<% }
else
	{
%>

<table>
<tr>
<th>Payment id</th>
<th> UserName</th>
<th>Course id's</th>
<th> Date</th>
<th>Bill</th>
<%if(u!=null){ %>
<th>Action</th>
<%} %>
</tr>
<% 
Iterator<Payment>it=l.iterator();
while(it.hasNext()){
	Payment c=it.next();

%>

<tr>
<td><%out.println(c.getPid()); %></td>
<td><%=c.getCustuname() %></td>
<td><%=c.getCids() %></td>
<td><%=c.getDate() %></td>
<td><%=c.getTotalBill() %></td>
<%if(u!=null){ %>
<td><a href="payment?Action=delete&pId=<%=c.getPid() %>">Delete</a></td>
<% } %>
</tr>
<% } %>
</table>
<% } %>
</center>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>