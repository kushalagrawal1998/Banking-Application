package com.konohaibank.dao;

import java.util.Iterator;


import java.util.List;
import java.util.Random;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.konohaibank.entity.Customer;


@Repository
@Transactional
public class CustomerDAOimpl implements CustomerDAO {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void saveCustomer(Customer theCustomer) {
		     
		
		        String account_nos;
		
		        String s = theCustomer.getCity();
		        
		    	Random rand = new Random();
				int random_num = 100000 + rand.nextInt(999999);
				account_nos = s.substring(0, 2)  + random_num;
				System.out.println(account_nos);
		        
				 
				Session currentSession = sessionFactory.getCurrentSession();	
				
				theCustomer.setAccount_no(account_nos);
			
				currentSession.save(theCustomer);	

	}

	@Override
	public void depositamount(String theId, String amounts) {
		
        Session currentSession = sessionFactory.getCurrentSession();
 
		
		int oldamount = (int) currentSession.createQuery("select amount from cust where account_no =  :id").setParameter("id", theId).uniqueResult();
		
		int id = (int) currentSession.createQuery("select id from cust where account_no =  :id").setParameter("id", theId).uniqueResult();
		
		Integer amountss = Integer.parseInt(amounts);
		int newamount = oldamount+amountss;
		
		Customer cc = currentSession.get(Customer.class, id);
		
		cc.setAmount(newamount);
		
		currentSession.update(cc);
		
		System.out.println(oldamount);
		
		
	}

	@Override
	public void withdrawamount(String theId, String amounts) {
		
		int newamount;
		
		 Session currentSession = sessionFactory.getCurrentSession();
		 
			
			int oldamount = (int) currentSession.createQuery("select amount from cust where account_no =  :id").setParameter("id", theId).uniqueResult();
			
			int id = (int) currentSession.createQuery("select id from cust where account_no =  :id").setParameter("id", theId).uniqueResult();
			
			Integer amountss = Integer.parseInt(amounts);
			
			if(amountss<oldamount) {
				
			 newamount = oldamount-amountss;
			 
			 Customer cc = currentSession.get(Customer.class, id);
				
				cc.setAmount(newamount);
				
				currentSession.update(cc);
			}
			else {
				System.out.println("could not be withdrawn");
			}
			
			System.out.println(oldamount);
	
	}

	@Override
	public void transferamount(String acc, String amounts, String acc1) {
		
		System.out.print("yo");
		
		Session currentSession = sessionFactory.getCurrentSession();
		
		int oldamount = (int) currentSession.createQuery("select amount from cust where account_no =  :id").setParameter("id", acc).uniqueResult();
		
		int oldamount1 = (int) currentSession.createQuery("select amount from cust where account_no =  :id").setParameter("id", acc1).uniqueResult();
		
		int id = (int) currentSession.createQuery("select id from cust where account_no =  :id").setParameter("id", acc).uniqueResult();
		
		int id1 = (int) currentSession.createQuery("select id from cust where account_no =  :id").setParameter("id", acc1).uniqueResult();
		
		Integer transfer_amount = Integer.parseInt(amounts);
		
		if(oldamount>transfer_amount) {
			
			oldamount = oldamount - transfer_amount;
			
			oldamount1 = oldamount1 + transfer_amount;
			
			
			 Customer cc = currentSession.get(Customer.class, id);
			 
			 Customer cs = currentSession.get(Customer.class, id1);
			 
			 cc.setAmount(oldamount);
			 
			 cs.setAmount(oldamount1);
			 
			 currentSession.update(cc);
			 
			 currentSession.update(cs);
			
		}
		else {
			System.out.println("marna yaha jeena yaha");
		}
		
		
	}

	@Override
	public int getBal(String user) {
		
    Session currentSession = sessionFactory.getCurrentSession();
		
    int oldamount = (int) currentSession.createQuery("select amount from cust where account_no =  :id").setParameter("id", user).uniqueResult();
	
    return oldamount;
	}


}
