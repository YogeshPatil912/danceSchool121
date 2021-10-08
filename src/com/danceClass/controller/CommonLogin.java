package com.danceClass.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.danceClass.dao.CustomerDaoImpl;
import com.danceClass.dao.LoginDaoImpl;


@WebServlet("/CommonLogin")
public class CommonLogin extends HttpServlet {
	LoginDaoImpl lgn=new LoginDaoImpl();
       
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException 
	{
		
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException 
	{
		HttpSession session=req.getSession();
		String action=req.getParameter("Action");
		String user=req.getParameter("uname");
		String passwd=req.getParameter("password");
		String newpasswd=req.getParameter("newpassword");
		if(action!=null && action.equals("login"))
		{
			boolean b1;
			System.out.println(action);
			boolean b=lgn.login(user, passwd);
			if(b==true)
			{
				String email=new CustomerDaoImpl().getEmail(user);
				session.setAttribute("email",email);
				System.out.println("Email !! : "+email);
				session.setAttribute("uname",user);
				res.sendRedirect("index.jsp");
			}
			else if(b==false)
			{
				b1=lgn.Adminlogin(user, passwd);
				if(b1)
				{
					session.setAttribute("admin", true);
					session.setAttribute("aname",user);
					res.sendRedirect("index.jsp");
				}
				else
					res.sendRedirect("Login.jsp");
			}
			else
				res.sendRedirect("Login.jsp");	
		}
		else if(action!=null && action.equals("change"))
		{
			boolean b=lgn.changePassword(user, passwd, newpasswd);
			System.out.println("inside change");
			if(b)
				res.sendRedirect("index.jsp");
			else
			{
				req.setAttribute("pwd", "fail");
				RequestDispatcher rd=req.getRequestDispatcher("ChangePassword.jsp");
				rd.forward(req, res);
				
			}
		}
		else
			res.sendRedirect("fail.jsp");
	}

}
