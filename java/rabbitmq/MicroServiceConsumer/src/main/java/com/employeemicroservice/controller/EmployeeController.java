package com.employeemicroservice.controller;

import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

import com.employeemicroservice.model.Employee;
import com.employeemicroservice.repository.EmployeeRepository;

import lombok.extern.log4j.Log4j2;

@Log4j2
@RestController
public class EmployeeController {
	
	@Autowired
	private EmployeeRepository employeeRepository;
	
	@RabbitListener(queues = "${spring.rabbitmq.queue}")
	public void addEmployee(Employee employee) {
		log.info(employee);
		employeeRepository.save(employee);
		log.info("Employee details saved Successfully");
	}
	
}
