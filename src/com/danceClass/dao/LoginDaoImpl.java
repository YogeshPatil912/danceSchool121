package com.danceClass.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.danceClass.dbUtility.DbUtility;

public class LoginDaoImpl implements LoginDao  
{
	static Connection con=DbUtility.connection();

	@Override
	public boolean login(String uName, String custPassword) {
		PreparedStatement ps=null;
		ResultSet rs;
		String s="select * from customer where cust_uname=?";
		try
		{
			ps=con.prepareStatement(s);
			ps.setString(1, uName);
			rs=ps.executeQuery();
			if(rs.next())
			{
				if(uName.equals(rs.getString("cust_uname")) &&custPassword.equals(rs.getString("cust_password")))
					return true;	

				else 
					return false;
			}

		}

		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean changePassword(String uName, String oldPassword, String newPassword) {
		String update="update customer set cust_password=? where cust_uname=? and cust_password=?";
		PreparedStatement ps;
		int row =0;
		try
		{
			ps=con.prepareStatement(update);
			ps.setString(1, newPassword);
			ps.setString(2, uName);
			ps.setString(3, oldPassword);
			row=ps.executeUpdate();
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		if(row>0)
			return true;
		else
			return false;
	}

	@Override
	public boolean Adminlogin(String uName, String custPassword) {
		PreparedStatement ps=null;
		ResultSet rs;
		String s="select * from admin where uname=?";
		try
		{
			ps=con.prepareStatement(s);
			ps.setString(1, uName);
			rs=ps.executeQuery();
			if(rs.next())
			{
				if(uName.equals(rs.getString("uname")) &&custPassword.equals(rs.getString("password")))
					return true;	
				else 
					return false;
			}
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return false;
	}
}
