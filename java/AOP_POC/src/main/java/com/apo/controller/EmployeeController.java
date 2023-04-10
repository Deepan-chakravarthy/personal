package com.apo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.apo.model.Employee;
import com.apo.service.EmployeeService;

import lombok.extern.log4j.Log4j2;

@Log4j2
@RestController
@RequestMapping("/employee")
public class EmployeeController {

	@Autowired
	private EmployeeService employeeService;
	
	@PostMapping("/add")
	public String addEmployee(@RequestBody Employee employee) {
		log.info("Entered into Employee Controller --> " + employee);
		return employeeService.addEmployee(employee);
	}
	
	
}
