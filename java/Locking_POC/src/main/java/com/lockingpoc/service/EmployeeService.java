package com.lockingpoc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;

import com.lockingpoc.model.Employee;
import com.lockingpoc.repository.EmployeeRepository;

import lombok.extern.log4j.Log4j2;

@Service
@Log4j2
public class EmployeeService {

	@Autowired
	private EmployeeRepository employeeRepository;
	
	@Async
	public void update1(Employee employee) throws InterruptedException {
		Employee updateEmployee = employeeRepository.findByName(employee.getName());
		updateEmployee.setName("guru1");
		Thread.sleep(1_000);
		employeeRepository.save(updateEmployee);
		log.info(updateEmployee);
	}
	
	@Async
	public void update2(Employee employee) throws InterruptedException {
		Employee updateEmployee = employeeRepository.findByName(employee.getName());
		updateEmployee.setName("guru2");
		Thread.sleep(500);
		employeeRepository.save(updateEmployee);
		log.info(updateEmployee);
	}
	
}
