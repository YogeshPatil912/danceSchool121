package com.danceClass.pojo;

public class Customer 
{
	private String custUname,custEmailid,custPassword,custName,custAddress,custContact;
	public Customer()
	{
		
	}
	public Customer(String custUname,String custPassword,String custEmailid,String custName,String custAddress,String custContact)
	{
		super();
		this.custUname=custUname;
		this.custPassword=custPassword;
		this.custEmailid=custEmailid;
		this.custName=custName;
		this.custAddress=custAddress;
		this.custContact=custContact;
	}
	public String getCustUname() {
		return custUname;
	}
	public void setCustUname(String custUname) {
		this.custUname = custUname;
	}
	public String getCustEmailid() {
		return custEmailid;
	}
	public void setCustEmailid(String custEmailid) {
		this.custEmailid = custEmailid;
	}
	public String getCustPassword() {
		return custPassword;
	}
	public void setCustPassword(String custPassword) {
		this.custPassword = custPassword;
	}
	public String getCustName() {
		return custName;
	}
	public void setCustName(String custName) {
		this.custName = custName;
	}
	public String getCustAddress() {
		return custAddress;
	}
	public void setCustAddress(String custAddress) {
		this.custAddress = custAddress;
	}
	public String getCustContact() {
		return custContact;
	}
	public void setCustContact(String custContact) {
		this.custContact = custContact;
	}
	@Override
	public String toString() {
		return "Customer [custUname=" + custUname + ", custEmailid=" + custEmailid + ", custPassword=" + custPassword
				+ ", custName=" + custName + ", custAddress=" + custAddress + ", custContact=" + custContact + "]";
	}
	
	
	
}
