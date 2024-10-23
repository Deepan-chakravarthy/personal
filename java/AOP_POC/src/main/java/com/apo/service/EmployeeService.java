package com.apo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.apo.model.Employee;
import com.apo.repository.EmployeeRepository;

import lombok.extern.log4j.Log4j2;

@Log4j2
@Service
public class EmployeeService {

	@Autowired
	private EmployeeRepository employeeRepository;
	
	public String addEmployee(Employee employee) {
		log.info("Entered into Employee service --> " + employee);
		employeeRepository.save(employee);
		return "Employee saved successfully";
	}
	
}
