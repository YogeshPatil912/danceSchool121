package com.danceClass.dao;

import java.util.List;

import com.danceClass.pojo.Customer;

public interface CustomerDao 
{
	boolean addCustomer(Customer customer);
	boolean updateCustomer(Customer customer);
	boolean deleteCustomer(String Uname);
	Customer searchCustomerByUname(String Uname);
	String getEmail(String Uname);
	List<Customer> getAllCustomer();
	boolean chkUname(String uname);
}
