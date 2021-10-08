package com.danceClass.test;

import java.io.IOException;

import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMultipart;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MailTestMain
{
	public static void main(String[] args) throws IOException, MessagingException {
		Multipart msg=new MimeMultipart();
		/*
		 * MimeBodyPart img=new MimeBodyPart(); img.attachFile("images\\b1.png");
		 */
		MimeBodyPart ms=new MimeBodyPart();
		ms.setContent("<html><head>hi</head><body><img src='images/b1.png'><br><h1>Hello World</h1></body></html>", "text/html");
		msg.addBodyPart(ms);
		//msg.addBodyPart(img);
		SendEmail.sendMail("abe@gmail.com", msg); //Add email Id here
		
	}
}
