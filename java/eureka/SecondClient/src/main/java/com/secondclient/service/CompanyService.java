package com.secondclient.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.secondclient.entity.Company;
import com.secondclient.repository.CompanyRepository;

@Service
public class CompanyService {

	@Autowired
	CompanyRepository companyRepository;
	
	public Company addCompany(Company company) {
		return companyRepository.save(company);
	}
	
	public List<Company> getAllCompanies() {
		return companyRepository.findAll();
	}
	
}
