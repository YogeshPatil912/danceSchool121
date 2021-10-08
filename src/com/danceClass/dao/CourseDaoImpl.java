package com.danceClass.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.danceClass.dbUtility.DbUtility;
import com.danceClass.pojo.Course;

public class CourseDaoImpl implements CourseDao
{
	static Connection con=DbUtility.connection();

	@Override
	public boolean addCourse(Course course) {
		PreparedStatement ps;
		int row=0;
		try
		{
			ps=con.prepareStatement("insert into course (c_type,c_dancecat,c_duration,c_batch,c_price)values(?,?,?,?,?)");
			ps.setString(1,course.getCtype() );
			ps.setString(2,course.getCdancecat() );
			ps.setString(3,course.getCduration() );
			ps.setString(4,course.getCbatch() );
			ps.setDouble(5,course.getCprice());
			row=ps.executeUpdate();
			if(row>0)
				return true;
			else
				return false;
		}
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean updateCourse(Course course) {
		PreparedStatement ps;
		int row=0;
		try
		{
			ps=con.prepareStatement("update course set c_type=?,c_dancecat=?,c_duration=?,c_batch=?,c_price=? where c_id=?");
			ps.setString(1,course.getCtype() );
			ps.setString(2,course.getCdancecat() );
			ps.setString(3,course.getCduration() );
			ps.setString(4,course.getCbatch() );
			ps.setDouble(5,course.getCprice());
			ps.setInt(6, course.getCid());
			row=ps.executeUpdate();
			if(row>0)
				return true;
			else
				return false;
		}
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean deleteCourse(int courseId) {
		PreparedStatement ps;
		int b=0;
		try
		{
			ps=con.prepareStatement("delete from course where c_id=?");
			ps.setInt(1, courseId);
			b=ps.executeUpdate();
			if(b>0)
				return true;
			else
				return false;
		}
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		return false;
	}
	
	@Override
	public List<Course> serachByTypeCat(String courseType, String courseCat) {
		List lst=new ArrayList();
		ResultSet rs;
		Course c=null;
		PreparedStatement ps;
		try
		{
			ps=con.prepareStatement("select * from course where c_type=? and c_dancecat=? order by c_type");
			ps.setString(1, courseType);
			ps.setString(2, courseCat);
			rs=ps.executeQuery();
			while(rs.next())
			{
				c=new Course(rs.getString("c_type"),rs.getString("c_dancecat"),rs.getString("c_duration"),rs.getString("c_batch"),rs.getDouble("c_price"));
				c.setCid(rs.getInt("c_id"));
				lst.add(c);
			}
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
		return lst;
	}

	@Override
	public List<Course> getAll() {
		List lst=new ArrayList();
		ResultSet rs;
		Course c=null;
		PreparedStatement ps;
		try
		{
			ps=con.prepareStatement("select * from course order by c_type");
			rs=ps.executeQuery();
			while(rs.next())
			{
				c=new Course(rs.getString("c_type"),rs.getString("c_dancecat"),rs.getString("c_duration"),rs.getString("c_batch"),rs.getDouble("c_price"));
				c.setCid(rs.getInt("c_id"));
				lst.add(c);
			}
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
		return lst;
	}

	@Override
	public Course serachById(int courseId) {
		PreparedStatement ps;
		int row=0;
		Course c=null;
		ResultSet rs;
		try
		{
			ps=con.prepareStatement("select * from course where c_id=?");
			ps.setInt(1,courseId);
			rs=ps.executeQuery();
			while(rs.next())
			{
				c=new Course(rs.getString("c_type"),rs.getString("c_dancecat"),rs.getString("c_duration"),rs.getString("c_batch"),rs.getDouble("c_price"));
				c.setCid(courseId);
			}
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return c;
	}
}
