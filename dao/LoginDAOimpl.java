package com.konohaibank.dao;

import java.util.List;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.konohaibank.entity.Customer;

@Repository
public class LoginDAOimpl implements LoginDAO {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public String loginCheck(String customerID, String password) {
		
		Session currentSession = sessionFactory.getCurrentSession();
		
		Query theQuery = currentSession.createQuery("from cust u where u.account_no=:id AND u.password=:pass");
		theQuery.setParameter("id", customerID);
		theQuery.setParameter("pass", password);

		List results = theQuery.list();
		
		if ((results!=null) && (results.size()>0)){
			return "success";
		}
		else {
		return "failed";
	}
	
	}

	@Override
	public List<Customer> getAccount(String accountID) {
		
		Session currentSession = sessionFactory.getCurrentSession();
		Query<Customer> theQuery = currentSession.createQuery("from cust p where p.account_no =:id", Customer.class);
		theQuery.setParameter("id", accountID);
		List<Customer> theAccount = theQuery.getResultList();

		return theAccount;
		
	}

}
