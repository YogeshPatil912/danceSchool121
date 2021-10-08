<%@ page language="java" import="com.danceClass.pojo.Customer,java.util.List,java.util.Iterator" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer List</title>
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
<% List<Customer>clist=(List)session.getAttribute("list");
%>
<table border="2" cellpadding="5">
<caption></caption>
<tr>
<th>UserName</th>
<!-- <th>Customer Passwd</th> -->
<th>User's EmailId</th>
<th>Full Name</th>
<th>ContactNo</th>
<th>Address</th>
<th>Action</th>
</tr>
<%
Iterator<Customer>it=clist.iterator(); 
while(it.hasNext())
{
	Customer c=it.next();
%>
<tr>
<td><%=c.getCustUname() %></td>
<%-- <td><%=c.getCustPassword() %></td> --%>
<td><%=c.getCustEmailid() %></td>
<td><%=c.getCustName()%></td>
<td><%=c.getCustContact() %></td>
<td><%=c.getCustAddress() %></td>
<%-- <td><a href="Customer?Action=update&custUname=<%=c.getCustUname() %>">edit</a></td> --%>
<td><a href="Customer?Action=delete&custUname=<%=c.getCustUname() %>">delete</a></td>
</tr>
<%
}

%>
</table>
</center>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>