package com.danceClass.test;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class SendEmail
{
	public static void sendMail(String recipiant , Multipart body) throws MessagingException
	{
		System.out.println("preparing to send mail !!");
		Properties properties=new Properties();
		properties.put("mail.smtp.starttls.enable", "true");
		properties.put("mail.smtp.auth", "true");
		properties.put("mail.smtp.host", "smtp.gmail.com");
		properties.put("mail.smtp.port", "587");
		String myEmail="danceschool912@gmail.com"; // Add email Id here email Id & password should be simple 2way Auth not allowed
		String password="yogeshpatil";             // Add Password here   
		Session session=Session.getInstance(properties, new Authenticator() {
			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				
				return new PasswordAuthentication(myEmail,password);
			}
		});
		Message message= prepareMessage(session,myEmail,recipiant,body);
		Transport.send(message);
		System.out.println("message send success !!");
	}

	private static Message prepareMessage(Session session, String myEmail,String recipiant,Multipart body) {
		Message message=new MimeMessage(session);
		try {
			message.setFrom(new InternetAddress(myEmail));
			message.setRecipient(Message.RecipientType.TO, new InternetAddress(recipiant));
			message.setSubject("Dance School Notification :");
			message.setContent(body);
			
			return message;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
