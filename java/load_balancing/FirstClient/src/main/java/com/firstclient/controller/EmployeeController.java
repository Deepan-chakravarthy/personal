package com.firstclient.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.firstclient.entity.Employee;
import com.firstclient.service.EmployeeService;

import lombok.extern.log4j.Log4j2;

@Log4j2
@RestController
@RequestMapping("/c1/api")
public class EmployeeController {

	@Value("${server.port}")
    private String port;
	
	@Autowired
	EmployeeService employeeService;
	
	@GetMapping("/hello")
	public String hello() {
		return "Hello, From client-1 and Port Number:  " + port;
	}
	
	@PostMapping("/add")
	public Employee addEmployee(@RequestBody Employee employee) {
		log.info(employee);
		return employeeService.addEmployee(employee);
	}
	
	@GetMapping("/view")
	public List<Employee> getAllEmployee(){
		return employeeService.getAllEmployee();
	}
	
}
