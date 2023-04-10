package com.globalexception.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.globalexception.entity.Employee;
import com.globalexception.service.EmployeeService;

@RequestMapping("/employee")
@RestController
public class EmployeeController {
 
	@Autowired
	private EmployeeService employeeService;
	
	@PostMapping("/add")
	public ResponseEntity<Employee> add(@RequestBody Employee employee) {
		Employee savedEmployee = employeeService.add(employee);
		return new ResponseEntity<Employee>(savedEmployee,HttpStatus.CREATED);
	}
	
	@GetMapping("/all")
	public ResponseEntity<List<Employee>> getAllEmployees(){
		
		List<Employee> listOfAllEmps = employeeService.getAllEmployees();
		return new ResponseEntity<List<Employee>>(listOfAllEmps, HttpStatus.OK);
	}
	
	@GetMapping("/view/{empid}")
	public ResponseEntity<Employee> getEmpByempid(@PathVariable("empid") Long empidL){
		
		Employee empRetrieved = employeeService.getEmpByempid(empidL);
		return new ResponseEntity<Employee>(empRetrieved, HttpStatus.OK);
	}
	
	@DeleteMapping("/delete/{empid}")
	public ResponseEntity<Void> deleteEmpById(@PathVariable("empid") Long empidL){
		
		employeeService.deleteEmpById(empidL);
		return new ResponseEntity<>(HttpStatus.ACCEPTED);
	}
	
//	@PutMapping("/update")
//	public ResponseEntity<Employee> updateEmployee(@RequestBody Employee employee){
//		Employee employeeSaved = employeeService.updateEmployee(employee);
//		return new ResponseEntity<Employee>(employeeSaved, HttpStatus.CREATED);
//	}
	
}
