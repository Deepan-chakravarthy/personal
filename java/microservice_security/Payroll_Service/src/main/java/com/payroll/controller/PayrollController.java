package com.payroll.controller;

import java.util.List;

import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.beans.factory.annotation.Autowired;
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

import com.payroll.entity.Payroll;
import com.payroll.service.PayrollService;

@RequestMapping("/payroll")
@RestController
public class PayrollController {

	@Autowired
	private PayrollService payrollService;
	
	@PostMapping("/add")
	public ResponseEntity<Payroll> addPayroll(@RequestBody Payroll payroll) {
		Payroll savedPayroll = payrollService.addPayroll(payroll);
		return new ResponseEntity<>(savedPayroll, HttpStatus.CREATED);
	}
	
	@GetMapping("/view/{employeeNumber}")
	public ResponseEntity<Payroll> getByEmployeeNumber(@PathVariable("employeeNumber") Integer employeeNumber) {
		Payroll getPayroll = payrollService.getByEmployeeNumber(employeeNumber);
		return new ResponseEntity<>(getPayroll, HttpStatus.FOUND);
	}
	
	@GetMapping("/viewall")
	public ResponseEntity<List<Payroll>> getAllPayrolls() {
		List<Payroll> payrolls = payrollService.getAllPayrolls();
		return new ResponseEntity<>(payrolls, HttpStatus.OK);
	}
	
	@DeleteMapping("/delete/{employeeNumber}")
	public ResponseEntity<Void> deletePayroll(@PathVariable("employeeNumber") Integer employeeNumber) {
		payrollService.deletePayroll(employeeNumber);
		return new ResponseEntity<>(HttpStatus.ACCEPTED);
	}
	
	@PutMapping("update")
	public ResponseEntity<Payroll> updatePayroll(@RequestBody Payroll payroll) {
		Payroll updatedPayroll = payrollService.updatePayroll(payroll);
		return new ResponseEntity<>(updatedPayroll, HttpStatus.ACCEPTED);
	}
	
	@RabbitListener(queues = "${spring.rabbitmq.queue}")
	public void addPayrollByRabbitMQ(@RequestBody Payroll payroll) {
		payrollService.addPayroll(payroll);
	}
	
}
