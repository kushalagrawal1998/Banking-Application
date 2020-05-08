package com.konohaibank.service;

import com.konohaibank.entity.Customer;


import java.util.*;

public interface LoginService {
	
	String loginCheck(String customerID, String password);
	public List <Customer> getAccount(String accountID);


}
