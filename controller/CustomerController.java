package com.konohaibank.controller;

import java.util.Random;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.konohaibank.service.CustomerService;
import com.konohaibank.service.FileUploadService;
import com.konohaibank.entity.Customer;
import com.konohaibank.entity.UploadFile;

@Controller
@RequestMapping("/customer")
public class CustomerController {
	String account_no;

	@Autowired
	private CustomerService customerService;
	
	@Autowired
	private FileUploadService fileUploadService;
	
	@RequestMapping("/list")
	public String listCustomers(Model theModel,HttpSession session) {
		
		String uid = (String)session.getAttribute("session");
		theModel.addAttribute("customerId", uid);
		
		
		return "loggedin";
	}
	
	@GetMapping("/showFormForAdd")
	public String showFormForAdd(Model theModel) {
		
		// create model attribute to bind form data
		Customer theCustomer = new Customer();
		
		theModel.addAttribute("customer", theCustomer);
		
		return "customer-form";
	}
	
	@PostMapping("/saveCustomer")
	public String saveCustomer(@ModelAttribute("customer") Customer theCustomer) {
			
		// save the customer using our service
		customerService.saveCustomer(theCustomer);
		
		return "redirect:/log/logindone";
	}
	
	@GetMapping("/deposit")
	public String depositamount(Model theModel, HttpSession session) {
		
        Customer theCustomer = new Customer();
        
        String uid = (String)session.getAttribute("session");
        System.out.println(uid);
		
        
		theModel.addAttribute("customer", theCustomer);
		theModel.addAttribute("id", uid);
		
		return "deposits";
		
	}
	
	@PostMapping("/customerdeposit")
	public String customerdeposit(@RequestParam("account_no") String theId,@RequestParam("amount") String amounts) {
			
	   System.out.println("you hell depsoit");
	   
	   
		
		customerService.depositamount(theId,amounts);
		
		return "redirect:/log/logins";
	}
	
	@GetMapping("/withdraw")
	public String withdrawamount(Model theModel,HttpSession session) {
		
        Customer theCustomer = new Customer();
        String uid = (String)session.getAttribute("session");
        System.out.println(uid);
		
		theModel.addAttribute("customer", theCustomer);
		theModel.addAttribute("id", uid);
		
		return "withdraw";
		
	}
	
	@PostMapping("/customerwithdraw")
	public String customerwithdraw(@RequestParam("account_no") String theId,@RequestParam("amount") String amounts,@ModelAttribute("customer") Customer theCustomer) {
			
		System.out.println("you withdrwas");
		
	   customerService.withdrawamount(theId,amounts);
		
		return "redirect:/log/logins";
	}
	
	@GetMapping("/transfer")
	public String transfer(Model theModel,HttpSession session) {
		
        Customer theCustomer = new Customer();
        String uid = (String)session.getAttribute("session");
        System.out.println(uid);
        theModel.addAttribute("id", uid);
		theModel.addAttribute("customer", theCustomer);
		
		return "transfer";
		
	}
	
	@PostMapping("/transferamounts")
	public String transferamount(@RequestParam("account_no") String acc,@RequestParam("amount") String amounts,@RequestParam("account_no1") String acc1) {
			
		System.out.println("you withdrwas");
		
	   customerService.transferamount(acc,amounts,acc1);
		
		return "redirect:/log/logins";
	}
	
	@GetMapping("/file")
	public String showUploadForm(Model theModel) {
		return "Upload";
	}
	
    @PostMapping("/doUpload")
    public String handleFileUpload(HttpServletRequest request,
            @RequestParam CommonsMultipartFile[] fileUpload) throws Exception {
         
        if (fileUpload != null && fileUpload.length > 0) {
            for (CommonsMultipartFile aFile : fileUpload){
                 
                System.out.println("Saving file: " + aFile.getOriginalFilename());
                
                UploadFile uploadFile = new UploadFile();
                uploadFile.setFileName(aFile.getOriginalFilename());
                uploadFile.setData(aFile.getBytes());
                fileUploadService.save(uploadFile);                
            }
        }
 
        return "redirect:/log/logins";
    }
	
	
	

	
}


