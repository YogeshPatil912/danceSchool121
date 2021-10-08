package com.danceClass.pojo;

public class Cart 
{
	private int cartid,cid;
	private String custuname;
	public Cart()
	{
		
	}
	public Cart(int cid,String custuname)
	{
		super();
		this.cid=cid;
		this.custuname=custuname;
	}
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getcustuname() {
		return custuname;
	}
	public void setcustuname(String custuname) {
		this.custuname = custuname;
	}
	@Override
	public String toString() {
		return "Cart [cid=" + cid + ", custuname=" + custuname + "]";
	}
	
}
