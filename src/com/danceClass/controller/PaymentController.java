package com.danceClass.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.danceClass.dao.PaymentDaoImpl;
import com.danceClass.pojo.Payment;



@WebServlet("/payment")
public class PaymentController extends HttpServlet {
	
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException 
	{
		PaymentDaoImpl p=new PaymentDaoImpl();
		HttpSession session=req.getSession();
		System.out.println("Ooooo");
		
		String user=(String)session.getAttribute("uname");
		String admin=(String)session.getAttribute("aname");
		String action=req.getParameter("Action");
		//int pid=Integer.parseInt(req.getParameter("pId"));
		System.out.println("saasdaads");
		if(action!=null && action.equals("searchId"))
		{
			System.out.println("hellloa");
			List<Payment>lst=p.showBookings(user);
			System.out.println("bookings Inside !!!!");
			session.setAttribute("plist", lst);
			res.sendRedirect("PaymentList.jsp");
		}
		else if(action!=null && action.equals("delete"))
		{
			int pid=Integer.parseInt(req.getParameter("pId"));
			boolean b=p.deletebooking(pid);
			if(b)
				res.sendRedirect("payment");
			else
				res.sendRedirect("fail.jsp");
		}
		else
		{
			List<Payment>lst=p.getAllBookings();
			session.setAttribute("plist", lst);
			res.sendRedirect("PaymentList.jsp");
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
	}

}
