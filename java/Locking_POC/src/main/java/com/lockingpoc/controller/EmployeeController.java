package com.lockingpoc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.lockingpoc.model.Employee;
import com.lockingpoc.repository.EmployeeRepository;
import com.lockingpoc.service.EmployeeService;

import lombok.extern.log4j.Log4j2;

@Log4j2
@RequestMapping("employee")
@RestController
public class EmployeeController {

	@Autowired
	private EmployeeRepository employeeRepository;
	
	@Autowired
    private EmployeeService employeeService;
	
	@PostMapping("/add")
	public String addEmployee(@RequestBody Employee employee) {
		log.info(employee);
		employeeRepository.save(employee);
		return "employee add successfully";
	}
	
	@GetMapping("/locking")
	public void lockingDemo() throws InterruptedException {
		Employee employee = employeeRepository.findByName("akash");
		log.info("controller before update" + employee);
		employeeService.update1(employee);
		employeeService.update2(employee);
	}
	
}
