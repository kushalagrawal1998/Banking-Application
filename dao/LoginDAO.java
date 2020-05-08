package com.konohaibank.dao;

import java.util.List;


import com.konohaibank.entity.Customer;

public interface LoginDAO {
	
	public String loginCheck(String customerID, String password);
	public List <Customer> getAccount(String accountID);

}
