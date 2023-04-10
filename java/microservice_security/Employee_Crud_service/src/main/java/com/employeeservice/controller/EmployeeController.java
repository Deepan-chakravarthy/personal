package com.employeeservice.controller;

import java.util.List;

import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.reactive.function.client.WebClient;

import com.employeeservice.Response.ResponseError;
import com.employeeservice.dto.PayrollPojo;
import com.employeeservice.entity.Employee;
import com.employeeservice.service.EmployeeService;
import com.netflix.hystrix.contrib.javanica.annotation.HystrixCommand;

import reactor.core.publisher.Mono;

@RequestMapping("/employee")
@RestController
public class EmployeeController {
 
	@Value("${spring.rabbitmq.exchange}")
	private String exchange;

	@Value("${spring.rabbitmq.routingkey}")
	private String routingKey;

	@Autowired
	private RabbitTemplate rabbitTemplate;
	
	@Autowired
	private EmployeeService employeeService;
	
	@PostMapping("/add")
	public ResponseEntity<Employee> add(@RequestBody Employee employee) {
		Employee savedEmployee = employeeService.add(employee);
		return new ResponseEntity<>(savedEmployee,HttpStatus.CREATED);
	}
	
	@GetMapping("/viewall")
	public ResponseEntity<List<Employee>> getAllEmployees(){
		
		List<Employee> listOfAllEmps = employeeService.getAllEmployees();
		return new ResponseEntity<>(listOfAllEmps, HttpStatus.OK);
	}
	
	@GetMapping("/view/{empNumber}")
	public ResponseEntity<Employee> getEmpByNumber(@PathVariable("empNumber") Integer empNumber){
		
		Employee empRetrieved = employeeService.getEmpByNumber(empNumber);
		return new ResponseEntity<>(empRetrieved, HttpStatus.OK);
	}
	
	@DeleteMapping("/delete/{empNumber}")
	public ResponseEntity<Void> deleteByNumber(@PathVariable("empNumber") Integer empNumber){
		
		employeeService.deleteByNumber(empNumber);
		return new ResponseEntity<>(HttpStatus.ACCEPTED);
	}
	
	@PutMapping("/update")
	public ResponseEntity<Employee> updateEmployee(@RequestBody Employee employee){
		Employee employeeSaved = employeeService.updateEmployee(employee);
		return new ResponseEntity<>(employeeSaved, HttpStatus.CREATED);
	}
	
	@GetMapping("/viewall/payroll")
	@HystrixCommand(fallbackMethod = "pingFallBack")
	public ResponseEntity<Object> getAllPayroll() {
		WebClient webClient = WebClient.create();
		return new ResponseEntity<>(webClient.get()
				.uri("localhost:8082/payroll/viewall")
	            .retrieve()
	            .bodyToFlux(PayrollPojo.class)
	            .collectList()
	            .block(), HttpStatus.OK);
	}
	
	@PostMapping("/add/payroll")
	public ResponseEntity<PayrollPojo> addPayroll(@RequestBody PayrollPojo payrollPojo) {
		WebClient webClient = WebClient.create();
		return new ResponseEntity<>(webClient.post()
				.uri("localhost:8082/payroll/add")
				.body(Mono.just(payrollPojo), PayrollPojo.class)
	            .retrieve()
	            .bodyToMono(PayrollPojo.class)
	            .block(), HttpStatus.ACCEPTED);
	}
	
	@GetMapping("/view/payroll/{employeeNumber}")
	public ResponseEntity<PayrollPojo> getAllPayroll(@PathVariable Integer employeeNumber) {
		WebClient webClient = WebClient.create();
		return new ResponseEntity<>(webClient.get()
				.uri("localhost:8082/payroll/view/{employeeNumber}", employeeNumber)
	            .retrieve()
	            .bodyToMono(PayrollPojo.class)
	            .block(), HttpStatus.OK);
	}
	
	@PutMapping("/update/payroll")
	public ResponseEntity<PayrollPojo> updatePayroll(@RequestBody PayrollPojo payrollPojo) {
		WebClient webClient = WebClient.create();
		return new ResponseEntity<>(webClient.put()
				.uri("localhost:8082/payroll/update")
				.body(Mono.just(payrollPojo), PayrollPojo.class)
	            .retrieve()
	            .bodyToMono(PayrollPojo.class)
	            .block(), HttpStatus.ACCEPTED);
	}
	
	@DeleteMapping("/delete/payroll/{employeeNumber}")
	public ResponseEntity<Void> deletePayroll(@PathVariable Integer employeeNumber) {
		WebClient webClient = WebClient.create();
		webClient.delete()
				.uri("localhost:8082/payroll/delete/{employeeNumber}", employeeNumber)
	            .retrieve()
	            .bodyToMono(PayrollPojo.class)
	            .block();
		return new ResponseEntity<>(HttpStatus.ACCEPTED);
	}
	
	public ResponseEntity<Object> pingFallBack() {
		ResponseError message = ResponseError.builder().message("Resource is busy or offline").build();
		return new ResponseEntity<>(message, HttpStatus.SERVICE_UNAVAILABLE);
	}
	
	@PostMapping("/rabbitmq/add/payroll")
	public ResponseEntity<Object> addPayrollByRabbitMQ(@RequestBody PayrollPojo payrollPojo) {
		rabbitTemplate.convertAndSend(exchange, routingKey, payrollPojo);
		ResponseError message = ResponseError.builder().message("Successfully Send to queue(Rabbit MQ)").build();
		return new ResponseEntity<>(message, HttpStatus.ACCEPTED);
	}
	
	
}
