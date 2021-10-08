package com.danceClass.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.danceClass.dbUtility.DbUtility;
import com.danceClass.pojo.Course;
import com.danceClass.pojo.Customer;

public class CustomerDaoImpl implements CustomerDao
{
	static Connection con=DbUtility.connection();

	@Override
	public boolean addCustomer(Customer customer) {
		int row=0;
		try
		{
			
			PreparedStatement ps=con.prepareStatement("insert into customer(cust_uname,cust_password,cust_emailid,cust_name,cust_address,cust_contactno)"
					+ "values(?,?,?,?,?,?)");
			//CallableStatement ps=con.prepareCall("{call cust_insert(?,?,?,?,?)}");
			
			ps.setString(1,customer.getCustUname());
			ps.setString(2,customer.getCustPassword());
			ps.setString(3,customer.getCustEmailid());
			ps.setString(4,customer.getCustName());
			ps.setString(5,customer.getCustAddress());
			ps.setString(6,customer.getCustContact());
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
	public boolean updateCustomer(Customer customer) {
		int row=0;
		PreparedStatement ps;
		try
		{
			
			ps=con.prepareStatement("update customer set cust_password=?,cust_emailid=?,cust_name=?,cust_address=?,cust_contactno=? where cust_uname=?");
			ps.setString(1,customer.getCustPassword());
			ps.setString(2,customer.getCustEmailid());
			ps.setString(3,customer.getCustName());
			ps.setString(4,customer.getCustAddress());
			ps.setString(5,customer.getCustContact());
			ps.setString(6,customer.getCustUname());
			//System.out.println("Valuee :"+customer.getCustPassword()+customer.getCustEmailid()+customer.getCustName()+customer.getCustAddress()+customer.getCustContact()+customer.getCustUname());
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
	public boolean deleteCustomer(String Uname) {
		int row=0;
		PreparedStatement ps=null;
		try
		{
			ps=con.prepareStatement("delete from customer where cust_uname=?");
			ps.setString(1, Uname);
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
	public Customer searchCustomerByUname(String Uname) {
		int row=0;
		ResultSet rs;
		PreparedStatement ps;
		Customer customer=null;
		try
		{
			ps=con.prepareStatement("select * from customer where cust_uname=?");
			ps.setString(1, Uname);
			rs=ps.executeQuery();
			while(rs.next())
			{
				customer=new Customer(rs.getString("cust_uname"),rs.getString("cust_password"),rs.getString("cust_emailid"),rs.getString("cust_name"),rs.getString("cust_address"),rs.getString("cust_contactno"));
			}
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
		return customer;
	}

	@Override
	public List<Customer> getAllCustomer() {
		List lst=new ArrayList();
		ResultSet rs;
		PreparedStatement ps;
		Customer cust=null;
		try
		{
			ps=con.prepareStatement("select * from customer");
			rs=ps.executeQuery();
			while(rs.next())
			{
				cust=new Customer(rs.getString("cust_uname"),rs.getString("cust_password"),rs.getString("cust_emailid"),rs.getString("cust_name"),rs.getString("cust_address"),rs.getString("cust_contactno"));
				lst.add(cust);
			}
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
		return lst;
	}

	@Override
	public String getEmail(String Uname) {
		List lst=new ArrayList();
		ResultSet rs;
		String Email="";
		PreparedStatement ps;
		Customer cust=null;
		try
		{
			ps=con.prepareStatement("select cust_emailid from customer where cust_uname=?");
			ps.setString(1, Uname);
			rs=ps.executeQuery();
			while(rs.next())
			{
				Email=rs.getString("cust_emailid");
			}
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
		return Email;
	}

	@Override
	public boolean chkUname(String uname) {
		ResultSet rs;
		PreparedStatement ps;
		try
		{
			ps=con.prepareStatement("select * from customer where cust_uname=?");
			ps.setString(1, uname);
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
