package com.danceClass.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.danceClass.dao.CourseDaoImpl;
import com.danceClass.pojo.Course;


@WebServlet("/course" )
public class CourseController extends HttpServlet {
	CourseDaoImpl course= new CourseDaoImpl();
	Course c;
	int cid;
	String ctype,cduration,cbatch,cdancecat;
	double cprice;
	
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException 
	{
		
		HttpSession session=req.getSession();
		PrintWriter out=res.getWriter();
		String action=req.getParameter("Action");
		if(action!=null && action.equals("edit"))
		{
			cid=Integer.parseInt(req.getParameter("cid"));
			c=course.serachById(cid);
			out.println(cid);
			if(c!=null)
			{
				session.setAttribute("c",c);
				res.sendRedirect("UpdateCourse.jsp");
				
			}
			else
				res.sendRedirect("Fail.jsp");
		}
		else if(action!=null && action.equals("delete"))
		{
			cid=Integer.parseInt(req.getParameter("cid"));
			boolean b=course.deleteCourse(cid);
			if(b)
			{
				//res.sendRedirect("course");
				/*
				 * res.setContentType("text/html"); PrintWriter pw=res.getWriter();
				 * pw.println("<script type=\"text/javascript\">");
				 * pw.println("alert('Course has been successfully deleted');");
				 * pw.println("</script>");
				 */
				res.sendRedirect("course");
			}
			else
			{
				res.sendRedirect("Fail.jsp");
			}
		}
		else if(action!=null && action.equals("search")) 
		{
			String type=req.getParameter("type");
			String cat=req.getParameter("cat");
			List<Course> lst=new ArrayList<Course>();
			lst=course.serachByTypeCat(type, cat);
			if(lst!=null && !(lst.isEmpty()))
			{
				session.setAttribute("clist", lst);
				res.sendRedirect("CourseList.jsp");
			}
			else {
				req.setAttribute("noc", "No Courses");
				res.sendRedirect("course");
			}
		}
		else 
		{
			List<Course>clst=course.getAll();
			if(clst!=null && !(clst.isEmpty()))
			{
				  session.setAttribute("clist", clst);
				  req.setAttribute("Ad1",req.getAttribute("Ad"));
				  req.setAttribute("ex", req.getAttribute("exist"));
				  RequestDispatcher rd=req.getRequestDispatcher("CourseList.jsp");
				  rd.forward(req, res);			
				//res.sendRedirect("CourseList.jsp");
			}
			else
			{
				req.setAttribute("ex", req.getAttribute("exist"));
				RequestDispatcher rd=req.getRequestDispatcher("CourseList.jsp");
				rd.forward(req, res);	
				//res.sendRedirect("CourseList.jsp");
			}
		}
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException 
	{
		String add=req.getParameter("Action");
		if(add!=null && add.equals("add")) 
		{
			ctype=req.getParameter("ctype");
			cduration=req.getParameter("cduration");
			cprice=Double.parseDouble(req.getParameter("cprice"));
			cbatch=req.getParameter("cbatch");
			cdancecat=req.getParameter("cdancecat");
			c=new Course(ctype,cdancecat, cduration, cbatch,cprice);
			boolean b=course.addCourse(c);
			if(b)
			{
				//res.sendRedirect("index.jsp");
				res.setContentType("text/html");
				PrintWriter pw=res.getWriter();
				pw.println("<script type=\"text/javascript\">");
				pw.println("alert('Course has been successfully added');");
				pw.println("</script>");
				RequestDispatcher rd=req.getRequestDispatcher("index.jsp");
				rd.include(req, res);
			}
			else
				res.sendRedirect("Fail.jsp");
		}
		else if(add!=null && add.equals("edit"))
		{
			System.out.println("inside post");
			int cid=Integer.parseInt(req.getParameter("cid"));
			ctype=req.getParameter("ctype");
			cdancecat=req.getParameter("cdancecat");
			cbatch=req.getParameter("cbatch");
			cprice=Double.parseDouble(req.getParameter("cprice"));
			cduration=req.getParameter("cduration");
			c=new Course();
			c.setCid(cid);
			c.setCbatch(cbatch);
			c.setCdancecat(cdancecat);
			c.setCduration(cduration);
			c.setCprice(cprice);
			c.setCtype(ctype);			
			boolean b=course.updateCourse(c);
			if(b)
			{
				//res.sendRedirect("index.jsp");
				res.setContentType("text/html");
				PrintWriter pw=res.getWriter();
				pw.println("<script type=\"text/javascript\">");
				pw.println("alert('Course has been successfully Updated');");
				pw.println("</script>");
				RequestDispatcher rd=req.getRequestDispatcher("index.jsp");
				rd.include(req, res);
			}
			else
				res.sendRedirect("Fail.jsp");
		}
	}

}
