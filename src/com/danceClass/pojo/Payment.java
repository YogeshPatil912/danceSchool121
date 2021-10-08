package com.danceClass.pojo;

public class Payment 
{
	private int pid;
	private String cids;
	private String custuname,date;
	private double totalBill;
	public Payment()
	{
		
	}
	public Payment(String custuname,String cids,String date,double totalBill)
	{
		super();
		this.custuname=custuname;
		this.cids=cids;
		this.date=date;
		this.totalBill=totalBill;
	}
	public String getCids() {
		return cids;
	}
	public void setCids(String cids) {
		this.cids = cids;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getCustuname() {
		return custuname;
	}
	public void setCustuname(String custuname) {
		this.custuname = custuname;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public double getTotalBill() {
		return totalBill;
	}
	public void setTotalBill(double totalBill) {
		this.totalBill = totalBill;
	}
	@Override
	public String toString() {
		return "Payment [pid=" + pid + ", cids=" + cids + ", custuname=" + custuname + ", date=" + date + ", totalBill="
				+ totalBill + "]";
	}
	
	
}
