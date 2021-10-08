package com.danceClass.dao;

import java.util.List;

import com.danceClass.pojo.Payment;

public interface PaymentDao 
{
	boolean deletebooking(int pid);
	int makePayment(String uName);
	List<Payment>showBookings(String uName);
	List<Payment>getAllBookings();
}
