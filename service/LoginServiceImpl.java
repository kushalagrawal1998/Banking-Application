package com.konohaibank.service;


import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.konohaibank.dao.LoginDAO;
import com.konohaibank.entity.*;

@Service
public class LoginServiceImpl implements LoginService{

	@Autowired
	private LoginDAO loginDAO;
	
	
	@Override
	@Transactional
	public String loginCheck(String customerID, String password) {
		
		return loginDAO.loginCheck(customerID, password);
	}

	@Override
	@Transactional
	public List<Customer> getAccount(String accountID) {

		return loginDAO.getAccount(accountID);
	}


}