package com.danceClass.controller;

import java.io.IOException;
import java.util.List;

import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMultipart;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.danceClass.dao.CartDaoImpl;
import com.danceClass.dao.PaymentDaoImpl;
import com.danceClass.pojo.Cart;
import com.danceClass.pojo.Course;
import com.danceClass.test.SendEmail;

@WebServlet("/cart")
public class CommonCart extends HttpServlet {
	Cart c;
	CartDaoImpl cdao=new CartDaoImpl();
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException 
	{
		String uName;
		int id;
		HttpSession session=req.getSession();
		uName=(String)session.getAttribute("uname");
		String action=req.getParameter("Action");
		if(action!=null && action.equals("addCart"))
		{
			id=Integer.parseInt(req.getParameter("courseId"));
			c=new Cart();
			c.setCid(id);
			c.setcustuname(uName);
			boolean b2=cdao.searchByCid(id,uName);
			if(b2)
			{
				req.setAttribute("exist", "Already Added !!");
				RequestDispatcher rd=req.getRequestDispatcher("course"); 
				rd.forward(req, res);
				//res.sendRedirect("course");
			}
			else
			{
				boolean b=cdao.addCart(c);
				if(b)
				{

					req.setAttribute("Ad","Added Successfully"); 
					RequestDispatcher rd=req.getRequestDispatcher("course"); 
					rd.forward(req, res);
					//res.sendRedirect("course");
				}
				else
				{
					res.sendRedirect("index.jsp");
				}
			}
		}
		else if(action !=null && action.equals("delete"))
		{
			id=Integer.parseInt(req.getParameter("courseId"));
			boolean b1=cdao.deleteCart(uName, id);
			if(b1)
			{
				res.sendRedirect("cart");
			}
			else
				res.sendRedirect("index.jsp");
		}
		else
		{
			List<Course>lst=cdao.showCart(uName);
			session.setAttribute("cartlist",lst);
			RequestDispatcher rd=req.getRequestDispatcher("CartList.jsp"); 
			rd.forward(req, res);
			//res.sendRedirect("CartList.jsp");
		}

	}
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException 
	{
		double TotalBill=0;
		PaymentDaoImpl pdao=new PaymentDaoImpl();
		String user;
		int orderId;
		HttpSession session=req.getSession();
		System.out.println("inside Cart2");
		user=(String)session.getAttribute("uname");
		String price[]=req.getParameterValues("price");
		for(int i=0;i<price.length;i++)
		{
			TotalBill=TotalBill+(Double.parseDouble(price[i]));
		}
		System.out.println("total bill :"+TotalBill);
		orderId=pdao.makePayment(user);
		System.out.println("insid post : "+orderId+"  unm : "+user);
		if(orderId!=0)
		{

			req.setAttribute("bill"," "+TotalBill);
			req.setAttribute("orderid",""+orderId);
			RequestDispatcher rd=req.getRequestDispatcher("FinalBill.jsp");
			rd.forward(req, res);
			//res.sendRedirect("Success.jsp");
		}
		else
		{
			res.sendRedirect("fail.jsp");
		}
	}

}
