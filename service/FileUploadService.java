package com.konohaibank.service;

import org.springframework.stereotype.Service;


import com.konohaibank.entity.UploadFile;

@Service
public interface FileUploadService {
	
	void save(UploadFile uploadFile);

}
