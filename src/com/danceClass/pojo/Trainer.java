package com.danceClass.pojo;

public class Trainer 
{
	private String tname,tprofile,temailid,tcontact,taddress,tdesc;
	public Trainer()
	{
		
	}
	public Trainer(String tname,String tprofile,String temailid,String tcontact,String taddress,String tdesc)
	{
		super();
		this.tname=tname;
		this.tprofile=tprofile;
		this.temailid=temailid;
		this.tcontact=tcontact;
		this.taddress=taddress;
		this.tdesc=tdesc;	
	}
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	public String getTprofile() {
		return tprofile;
	}
	public void setTprofile(String tprofile) {
		this.tprofile = tprofile;
	}
	public String getTemailid() {
		return temailid;
	}
	public void setTemailid(String temailid) {
		this.temailid = temailid;
	}
	public String getTcontact() {
		return tcontact;
	}
	public void setTcontact(String tcontact) {
		this.tcontact = tcontact;
	}
	public String getTaddress() {
		return taddress;
	}
	public void setTaddress(String taddress) {
		this.taddress = taddress;
	}
	public String getTdesc() {
		return tdesc;
	}
	public void setTdesc(String tdesc) {
		this.tdesc = tdesc;
	}
	@Override
	public String toString() {
		return "Trainer [tname=" + tname + ", tprofile=" + tprofile + ", temailid=" + temailid + ", tcontact="
				+ tcontact + ", taddress=" + taddress + ", tdesc=" + tdesc + "]";
	}
	
	
}
