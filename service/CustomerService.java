package com.konohaibank.service;

import org.springframework.stereotype.Service;


import com.konohaibank.entity.Customer;

@Service
public interface CustomerService {


	public void saveCustomer(Customer theCustomer);

	public void depositamount(String theId, String amounts);

	public void withdrawamount(String theId, String amounts);

	public void transferamount(String acc, String amounts, String acc1);

	public int getBal(String user);

	
	
}