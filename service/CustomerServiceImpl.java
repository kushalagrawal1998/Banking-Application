package com.konohaibank.service;

import javax.transaction.Transactional;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.konohaibank.dao.CustomerDAO;
import com.konohaibank.entity.Customer;

@Service

public class CustomerServiceImpl implements CustomerService {

	// need to inject customer dao
	@Autowired
	private CustomerDAO customerDAO;

	@Override
	@Transactional
	public void saveCustomer(Customer theCustomer) {

		customerDAO.saveCustomer(theCustomer);
	}

	@Override
	public void depositamount(String theId, String amounts) {
		// TODO Auto-generated method stub
		customerDAO.depositamount(theId,amounts);
	}

	@Override
	public void withdrawamount(String theId, String amounts) {
		
		customerDAO.withdrawamount(theId,amounts);
	
		
	}

	@Override
	public void transferamount(String acc, String amounts, String acc1) {
		
		customerDAO.transferamount(acc,amounts,acc1);
		
		
	}

	@Override
	public int getBal(String user) {
		
		return customerDAO.getBal(user);
		
	}

}
