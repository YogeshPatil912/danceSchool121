package com.danceClass.dao;

public interface LoginDao 
{
	boolean Adminlogin(String uName,String custPassword);
	boolean login(String uName,String custPassword);
	boolean changePassword(String uName,String oldPassword,String newPassword);
}
