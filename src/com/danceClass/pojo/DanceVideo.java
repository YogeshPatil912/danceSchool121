package com.danceClass.pojo;

public class DanceVideo 
{
	private int vid;
	private String vcat,vdesc,vpath;
	public DanceVideo()
	{
		
	}
	public DanceVideo(String vcat,String vdesc,String vpath)
	{
		super();
		//this.vid=vid;
		this.vcat=vcat;
		this.vdesc=vdesc;
		this.vpath=vpath;
	}
	public int getVid() {
		return vid;
	}
	public void setVid(int vid) {
		this.vid = vid;
	}
	public String getVcat() {
		return vcat;
	}
	public void setVcat(String vcat) {
		this.vcat = vcat;
	}
	public String getVdesc() {
		return vdesc;
	}
	public void setVdesc(String vdesc) {
		this.vdesc = vdesc;
	}
	public String getVpath() {
		return vpath;
	}
	public void setVpath(String vpath) {
		this.vpath = vpath;
	}
	@Override
	public String toString() {
		return "DanceVideo [vid=" + vid + ", vcat=" + vcat + ", vdesc=" + vdesc + ", vpath=" + vpath + "]";
	}
	
}
