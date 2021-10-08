package com.danceClass.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.danceClass.dbUtility.DbUtility;
import com.danceClass.pojo.Cart;
import com.danceClass.pojo.Course;


public class CartDaoImpl implements CartDao
{
	static Connection con=DbUtility.connection();

	@Override
	public boolean addCart(Cart cart) {
		PreparedStatement ps;
		int row =0;
		try
		{
			ps=con.prepareStatement("insert into cart(course_id,cust_uname)values(?,?)");
			ps.setInt(1, cart.getCid());
			ps.setString(2, cart.getcustuname());
			row=ps.executeUpdate();
			if(row>0)
				return true;
			else
				return false;
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean deleteCart(String uName,int courseId) {
		PreparedStatement ps;
		int row=0;
		try
		{
			ps=con.prepareStatement("delete from cart where course_id=? and cust_uname=?");
			ps.setInt(1, courseId);
			ps.setString(2, uName);
			row=ps.executeUpdate();
			if(row>0)
				return true;
			else 
				return false;
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean clearCart(String uName) {
		PreparedStatement ps;
		int row=0;
		try
		{
			ps=con.prepareStatement("delete from cart where cust_uname=?");
			ps.setString(1, uName);
			row=ps.executeUpdate();
			if(row>0)
				return true;
			else 
				return false;
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public List<Course> showCart(String uName) {
		Course c;
		ResultSet rs;
		PreparedStatement ps;
		List<Course> lst=new ArrayList<>();
		int row=0;
		try
		{
			ps=con.prepareStatement("select * from cart as c inner join course as f on c.course_id=f.c_id and c.cust_uname=? ");
			ps.setString(1, uName);
			rs=ps.executeQuery();
			while(rs.next())
			{
				c=new Course (rs.getString("c_type"),rs.getString("c_dancecat"),rs.getString("c_duration"),rs.getString("c_batch"),rs.getDouble("c_price"));
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
	public boolean searchByCid(int cid , String uname) {
		Course c;
		boolean r=false;
		ResultSet rs;
		PreparedStatement ps;
		int row=0;
		try
		{
			ps=con.prepareStatement("select * from cart where course_id=? and cust_uname=?");
			ps.setInt(1, cid);
			ps.setString(2, uname);
			rs=ps.executeQuery();
			if(rs.next())
			{
				return true;
			}
			else
				return false;
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

}
