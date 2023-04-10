package com.microservice.controller;

import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.microservice.model.Employee;

import lombok.extern.log4j.Log4j2;

@Log4j2
@RestController
@RequestMapping(value = "/employee")
public class ProducerController {

	@Value("${spring.rabbitmq.exchange}")
	private String exchange;

	@Value("${spring.rabbitmq.routingkey}")
	private String routingKey;

	@Autowired
	private RabbitTemplate rabbitTemplate;

	@PostMapping("/add")
	public String addEmployee(@RequestBody Employee employee) {
		log.info(employee);
		rabbitTemplate.convertAndSend(exchange, routingKey, employee);
		log.info("Request Send to Employee MicroService");
		return "Request Send to Employee MicroService";
	}

}
