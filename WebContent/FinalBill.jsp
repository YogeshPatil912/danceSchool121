<%@ page language="java" import="javax.mail.Multipart,javax.mail.internet.MimeBodyPart,javax.mail.internet.MimeMultipart,javax.mail.MessagingException,com.danceClass.test.SendEmail" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Final Bill</title>
<script src="jquery-3.4.1.js"></script>
<script>
$(document).ready(function() {
	$('html, body').animate({
	    scrollTop: $("#fcs").offset().top
	});
});
</script>
</head>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<form action="OnlinePay.jsp">
<%
String bill=(String)request.getAttribute("bill");
String oId=(String)request.getAttribute("orderid");
Multipart msg=new MimeMultipart();
/*
 * MimeBodyPart img=new MimeBodyPart(); img.attachFile("images\\b1.png");
 */
MimeBodyPart ms=new MimeBodyPart();
try {
	String email=(String)session.getAttribute("email");
	ms.setContent("<html><head></head><body><div style='background-color: #80ffd4;width:600px;'> <h1 style='color: #ff00ff;font-style: italic;'>Thank You For Joining Our Institute</h1>"+"\n"+"<h2 style='color: #008000;font-style: oblique;'>Your Total Bill Generated is :Rs."+bill+"</h2>"+"\n"+"<h2 style='color: #d633ff;font-style: oblique;'>Your Order Id is :Rs."+oId+"</h2>"+"\n"+"<h5 style='color: #ff3333;'>Note : kindly visite the Academy within 7 days of booking..</h5></div> </body></html>", "text/html");
	msg.addBodyPart(ms);
	SendEmail.sendMail(email, msg);
} catch (Exception e) {
	response.sendRedirect("index.jsp");
	e.printStackTrace();
}

//msg.addBodyPart(img);

%>
<div id="fcs"></div>
<center>
<input type="hidden" name="bill" value="<%=bill%>">
Your Total Bill is : <%=bill %><br>
Your Bill Id is : <%=oId %><br>
Bill Has been sent to your Mail...

<br>Want to make Online payment ??<br> 
<input type="submit" value="MakePayment">
</center>
</form>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>