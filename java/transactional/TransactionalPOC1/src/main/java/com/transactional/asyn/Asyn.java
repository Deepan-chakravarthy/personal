package com.transactional.asyn;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Component;

import com.transactional.model.Company;
import com.transactional.repository.CompanyRepository;

import lombok.extern.log4j.Log4j2;

@Log4j2
@Component
public class Asyn {

	@Autowired
	private CompanyRepository companyRepository;
	
	@Async
	public void addCompany(Company company) throws InterruptedException {
		log.info("Asyn : " + company);
		Thread.sleep(3000);
		companyRepository.save(company);
	}
	
}
