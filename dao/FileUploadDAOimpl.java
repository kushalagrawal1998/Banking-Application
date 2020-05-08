package com.konohaibank.dao;

import org.hibernate.Session;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.konohaibank.entity.UploadFile;


@Repository
public class FileUploadDAOimpl implements FileUploadDAO {
	@Autowired
	private SessionFactory sessionFactory;
	


	@Override
	@Transactional
	public void save(UploadFile uploadFile) {
		
		Session currentSession = sessionFactory.getCurrentSession();	
	
	
		currentSession.save(uploadFile);	
	}

}