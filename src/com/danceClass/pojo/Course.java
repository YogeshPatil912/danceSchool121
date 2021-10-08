package com.danceClass.pojo;

public class Course 
{
	private int cid;
	private String ctype,cduration,cbatch,cdancecat;
	private double cprice;
	public Course()
	{
		
	}
	public Course(String ctype,String cdancecat,String cduration,String cbatch,double cprice)
	{
		super();
		//this.cid=cid;
		this.ctype=ctype;
		this.cdancecat=cdancecat;
		this.cduration=cduration;
		this.cbatch=cbatch;
		this.cprice=cprice;
	}
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getCtype() {
		return ctype;
	}
	public void setCtype(String ctype) {
		this.ctype = ctype;
	}
	public String getCduration() {
		return cduration;
	}
	public void setCduration(String cduration) {
		this.cduration = cduration;
	}
	public String getCbatch() {
		return cbatch;
	}
	public void setCbatch(String cbatch) {
		this.cbatch = cbatch;
	}
	public String getCdancecat() {
		return cdancecat;
	}
	public void setCdancecat(String cdancecat) {
		this.cdancecat = cdancecat;
	}
	public double getCprice() {
		return cprice;
	}
	public void setCprice(double cprice) {
		this.cprice = cprice;
	}
	@Override
	public String toString() {
		return "Course [cid=" + cid + ", ctype=" + ctype + ", cduration=" + cduration + ", cbatch=" + cbatch
				+ ", cdancecat=" + cdancecat + ", cprice=" + cprice + "]";
	}
	
	
}
