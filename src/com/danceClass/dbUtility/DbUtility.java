package com.danceClass.dbUtility;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbUtility 
{
	public static Connection connection()
	{
		Connection con=null;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/danceClass","root","root");
		}
		catch(SQLException|ClassNotFoundException e)
		{
			e.printStackTrace();
		}
		return con;
	}
}
