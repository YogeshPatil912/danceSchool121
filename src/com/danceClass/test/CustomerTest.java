package com.danceClass.test;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Scanner;

import com.danceClass.dao.CustomerDaoImpl;
import com.danceClass.pojo.Customer;



public class CustomerTest {
	public static void main(String[] args) throws IOException {
		CustomerDaoImpl custDao=new CustomerDaoImpl();
		Scanner sc=new Scanner(System.in);
		InputStreamReader isr=new InputStreamReader(System.in);
		BufferedReader br=new BufferedReader(isr);
		int choice;
		String custUname,custEmailid,custName,custPassword,custContact,custAddress;
		
		System.out.println("Enter cust email ID :");//Add customer in database
		custUname=br.readLine();
		System.out.println("Enter cust email ID :");//Add customer in database
		custEmailid=br.readLine();
		System.out.println("Enter cust Name :");
		custName=br.readLine();
		System.out.println("Enter cust Password :");
		custPassword=br.readLine();
		System.out.println("Enter cust contact No :");
		custContact=br.readLine();
		System.out.println("Enter cust Address :");
		custAddress=br.readLine();
		Customer c=new Customer(custUname,custPassword,custEmailid, custName, custAddress, custContact);
		boolean b=custDao.addCustomer(c);
		System.out.println("Added to db : "+b);
	}

}
