package com.danceClass.dao;

import java.util.List;

import com.danceClass.pojo.Cart;
import com.danceClass.pojo.Course;

public interface CartDao 
{
	boolean addCart(Cart cart);
	boolean deleteCart(String uName,int courseId);
	boolean clearCart(String uName);
	List<Course> showCart(String uName);
	boolean searchByCid(int cid ,String uname);
}
