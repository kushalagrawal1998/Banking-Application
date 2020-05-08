package com.konohaibank.service;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.konohaibank.dao.CustomerDAO;
import com.konohaibank.dao.FileUploadDAO;
import com.konohaibank.entity.UploadFile;

@Service
public class FileUploadServiceImpl implements FileUploadService {
	
	@Autowired
	private FileUploadDAO File;

	@Override
	@Transactional
	public void save(UploadFile uploadFile) {
		
		File.save(uploadFile);
	}

}
