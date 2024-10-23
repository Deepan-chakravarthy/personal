package com.transactional.service;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.transactional.asyn.Asyn;
import com.transactional.dto.EmployeeRequest;
import com.transactional.model.Address;
import com.transactional.model.Company;
import com.transactional.model.Employee;
import com.transactional.repository.AddressRepository;
import com.transactional.repository.EmployeeRepository;

import lombok.extern.log4j.Log4j2;

@Log4j2
@Component
public class TransactionalService {

	@Autowired
	private EmployeeRepository employeeRepository;
	
//	@Autowired
//	private CompanyRepository companyRepository;
	
	@Autowired
	private AddressRepository addressRepository;
	
	@Autowired
	private Asyn asyn;
	
	public String addEmployee(EmployeeRequest employeeRequest) throws InterruptedException {
		Employee employee = new Employee();
		Company company = employeeRequest.getCompany();
		Address address = employeeRequest.getAddress();
		BeanUtils.copyProperties(employeeRequest, employee);
		log.info(employee);
		employeeRepository.save(employee);
		log.info(company);
//		companyRepository.save(company);
		asyn.addCompany(company);
		log.info(address);
		addressRepository.save(address);
		return "Employee details saved successfully";
	}
}
