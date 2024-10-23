package com.secondclient.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.secondclient.entity.Company;
import com.secondclient.service.CompanyService;


@RestController
@RequestMapping("/c2/api")
public class CompanyController {

	@Autowired
	CompanyService companyService;
	
	@GetMapping("/hello")
	public String hello() {
		return "Hello, From client-2";
	}
	
	@PostMapping("/add")
	public Company addCompany(@RequestBody Company company) {
        return companyService.addCompany(company);		
	}
	
	@GetMapping("/view")
	public List<Company> getAllCompanies(){
		return companyService.getAllCompanies();
	}
	
}
