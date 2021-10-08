package com.danceClass.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.danceClass.dbUtility.DbUtility;
import com.danceClass.pojo.Payment;


public class PaymentDaoImpl implements PaymentDao
{
	static Connection con=DbUtility.connection();
	String date =new Date().toString();
	int orderId;

	@Override
	public boolean deletebooking(int pid) {
		PreparedStatement ps;
		int row=0;
		try
		{
			ps=con.prepareStatement("delete from payment where p_id=?");
			ps.setInt(1, pid);
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
	public int makePayment(String uName) {
		PreparedStatement ps;
		double totalBill=0;
		int row=0;
		ResultSet rs;
		try
		{
			ps=con.prepareStatement("select sum(c.c_price) as totalbill from course as c inner join cart as ct on c.c_id=ct.course_id and ct.cust_uname=?");
			ps.setString(1, uName);
			rs=ps.executeQuery();
			while(rs.next())
			{
				totalBill=rs.getDouble("totalbill");
			}
			System.out.println("total billDao :"+totalBill);
			if(totalBill>0)
			{
				ps=con.prepareStatement("insert into payment(cust_uname,c_id,totalbill,date)values(?,?,?,?)");
				ps.setString(1, uName);
				ps.setString(2, "");
				ps.setDouble(3, totalBill);
				ps.setString(4, date);
				row=ps.executeUpdate();
				if(row>0)
				{
					int r=0;
					ps=con.prepareStatement("select course_id from cart where cust_uname=?");
					ps.setString(1, uName);
					String coursesId="";
					ResultSet r1=ps.executeQuery();
					while(r1.next())
					{
						coursesId=coursesId + r1.getInt("course_id")+",";
					}
					ps=con.prepareStatement("update payment set c_id=? where cust_uname=? and date=?");
					ps.setString(1, coursesId);
					ps.setString(2, uName);
					ps.setString(3, date);
					r=ps.executeUpdate();
					if(r>0)
					{
						String sel="select p_id from payment where date=? and cust_uname=?";
						ps=con.prepareStatement(sel);
						ps.setString(1, date);
						ps.setString(2, uName);
						ResultSet rs1=ps.executeQuery();
						if(rs1.next())
						{
							orderId=rs1.getInt("p_id");
						}
						CartDaoImpl crt=new CartDaoImpl();
						crt.clearCart(uName);
					}
				}
				
			}	
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return orderId;
	}

	@Override
	public List<Payment> showBookings(String uName) {
		Payment p;
		PreparedStatement ps;
		List<Payment>lst=new ArrayList<>();
		String select="select * from payment where cust_uname=?";
		try
		{
			ps=con.prepareStatement(select);
			ps.setString(1, uName);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				System.out.println("inside Payment Dao");
				p=new Payment(rs.getString("cust_uname"),rs.getString("c_id"),rs.getString("date"),rs.getDouble("totalbill"));
				p.setPid(rs.getInt("p_id"));
				lst.add(p);
			}
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return lst;
	}

	@Override
	public List<Payment> getAllBookings() {
		Payment p;
		PreparedStatement ps;
		List<Payment>lst=new ArrayList<>();
		String select="select * from payment ";
		try
		{
			System.out.println("Ddddddddddd");
			ps=con.prepareStatement(select);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				p=new Payment(rs.getString("cust_uname"),rs.getString("c_id"),rs.getString("date"),rs.getDouble("totalbill"));
				p.setPid(rs.getInt("p_id"));
				lst.add(p);
			}
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return lst;
	}

}
