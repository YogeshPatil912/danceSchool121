package com.danceClass.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.danceClass.dao.CustomerDaoImpl;
import com.danceClass.pojo.Customer;




@WebServlet("/Customer")
public class CustomerController extends HttpServlet {
	Customer c;
	CustomerDaoImpl cdao=new CustomerDaoImpl();
	String custUname,custEmailid,custPassword,custName,custAddress,custContact;

	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException 
	{
		HttpSession session=req.getSession();
		String action=req.getParameter("Action");
		if(action!=null && action.equals("update"))
		{
			//System.out.println("update doget");
			custUname=req.getParameter("CustEmailId");
			//System.out.println("use name : "+custUname);
			c=cdao.searchCustomerByUname(custUname);
			if(c!=null) 
			{
				session.setAttribute("custlist",c);
				res.sendRedirect("UpdateCustomer.jsp");
			}
			else 
			{
				res.sendRedirect("fail.jsp");
			}

		}
		else if(action!=null && action.equals("delete"))
		{
			custUname=req.getParameter("custUname");
			boolean b=cdao.deleteCustomer(custUname);
			if(b)
				res.sendRedirect("Customer");
			else
				res.sendRedirect("fail.jsp");
		}
		else 
		{
			PrintWriter out=res.getWriter();
			List<Customer>lst=cdao.getAllCustomer();
			if(lst!=null && !(lst.isEmpty()))
			{
				session.setAttribute("list",lst);
				res.sendRedirect("CustomerList.jsp");
			}
			else
				res.sendRedirect("index.jsp");
		}
	}
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException 
	{
		String action=req.getParameter("Action");
		if(action!=null && action.equals("add"))
		{
			custUname=req.getParameter("custUname");
			custPassword=req.getParameter("custpassword");
			custName=req.getParameter("custname");
			custEmailid=req.getParameter("custemail");
			custContact=req.getParameter("custcontact");
			custAddress=req.getParameter("custaddres");
			c=new Customer(custUname,custPassword,custEmailid,custName,custAddress,custContact);
			boolean b2=cdao.chkUname(custUname);
			if(b2)
			{
				res.setContentType("text/html");
				PrintWriter pw=res.getWriter();
				pw.println("<script type=\"text/javascript\">");
				pw.println("alert('This UserName Already exist Try Unique');");
				pw.println("</script>");
				RequestDispatcher rd=req.getRequestDispatcher("AddCustomer.jsp");
				rd.include(req, res);
			}
			else
			{
				boolean b=cdao.addCustomer(c);
				System.out.println(b);
				if(b)
					res.sendRedirect("index.jsp");
				else
					res.sendRedirect("fail.jsp");
			}
		}
		else if(action!=null && action.equals("update"))
		{
			//System.out.println("inside update2");
			custUname=req.getParameter("custUname");
			custPassword=req.getParameter("custpassword");
			custName=req.getParameter("custname");
			custEmailid=req.getParameter("custemail");			
			custContact=req.getParameter("custcontact");
			custAddress=req.getParameter("custaddres");
			c=new Customer(custUname,custPassword,custEmailid,custName,custAddress,custContact);
			//System.out.println("updated val :"+c);
			boolean b1=cdao.updateCustomer(c);
			//System.out.println("search method :"+b1);
			if(b1)
				res.sendRedirect("index.jsp");
			else
				res.sendRedirect("fail.jsp");
		}
		else
			res.sendRedirect("fail.jsp");
	}

}
