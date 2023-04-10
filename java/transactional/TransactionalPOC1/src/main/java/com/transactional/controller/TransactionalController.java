package com.transactional.controller;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.transactional.dto.EmployeeRequest;
import com.transactional.service.TransactionalService;

import lombok.extern.log4j.Log4j2;

@Log4j2
@RestController
@RequestMapping("/v1/transaction")
public class TransactionalController {

	private TransactionalService transactionalService;
	
	public TransactionalController(TransactionalService transactionalService) {
		this.transactionalService = transactionalService;
	}
	
	@PostMapping("/add")
	public String addEmployee(@RequestBody EmployeeRequest employeeRequest) throws InterruptedException {
	    log.info(employeeRequest);
		return transactionalService.addEmployee(employeeRequest);
	}
	
}
