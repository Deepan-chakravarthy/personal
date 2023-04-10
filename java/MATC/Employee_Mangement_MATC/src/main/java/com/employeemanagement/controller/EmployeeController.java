package com.employeemanagement.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.employeemanagement.dto.AddressRequest;
import com.employeemanagement.dto.EmployeeRequest;
import com.employeemanagement.dto.EmployeeResponse;
import com.employeemanagement.dto.MessageResponse;
import com.employeemanagement.dto.PersonRequest;
import com.employeemanagement.exception.BusinessException;
import com.employeemanagement.model.Employee;
import com.employeemanagement.service.EmployeeService;

import lombok.extern.log4j.Log4j2;

@Log4j2
@RestController
@RequestMapping("/v1/employee")
public class EmployeeController {

	@Autowired
	EmployeeService employeeService;

	@PreAuthorize("hasRole('ROLE_ADMIN')")
	@GetMapping("/paginated/viewall")
	public List<Employee> viewAll(@RequestParam(defaultValue = "0") Integer pageNo, @RequestParam(defaultValue = "2") Integer pageSize, @RequestParam(defaultValue = "number") String number) throws BusinessException {
		return employeeService.viewAll(pageNo, pageSize , number);
	}
	
	
	@PreAuthorize("hasRole('ROLE_ADMIN')")
	@PostMapping("/add")
	public MessageResponse addEmployee(@RequestBody EmployeeRequest employeeRequest) throws BusinessException {
		log.info(employeeRequest);
		return employeeService.addEmployee(employeeRequest);
	}

	@PreAuthorize("hasRole('ROLE_ADMIN')")
	@GetMapping("/view/{employeeNo}")
	public EmployeeResponse viewByEmployeeNo(@PathVariable String employeeNo) {
		log.info(employeeNo);
		return employeeService.viewByEmployeeNo(employeeNo);
	}

	@PreAuthorize("hasAnyRole('ROLE_USER' , 'ROLE_ADMIN')")
	@GetMapping("/view")
	public EmployeeResponse viewByEmployeeNo(Authentication auth) {
		log.info(auth.getName());
		return employeeService.viewByEmployeeNo(auth);
	}

	@PreAuthorize("hasRole('ROLE_ADMIN')")
	@GetMapping("/viewall")
	public List<Employee> viewAll() {
		return employeeService.viewAll();
	}

	@PreAuthorize("hasRole('ROLE_ADMIN')")
	@DeleteMapping("delete/{employeeNo}")
	public MessageResponse deleteEmployee(@PathVariable String employeeNo) throws BusinessException {
		try {
			MessageResponse message = employeeService.deleteEmployee(employeeNo);
			log.debug("Deleted Successfully");
			return message;
		} catch (BusinessException e) {
			log.error("Record not found");
			throw new BusinessException(e.getErrorCode(), e.getMessage(), e.getErrorParams());
		}
	}

	@PreAuthorize("hasRole('ROLE_ADMIN')")
	@PutMapping("update/employee")
	public MessageResponse updateEmployee(@RequestBody EmployeeRequest employeeRequest) {
		return employeeService.updateEmployee(employeeRequest);
	}

	@PreAuthorize("hasAnyRole('ROLE_USER' , 'ROLE_ADMIN')")
	@PutMapping("update/address")
	public MessageResponse updateAddress(Authentication auth, @RequestBody AddressRequest address) {
		return employeeService.updateAddress(auth, address);
	}
	
	@PreAuthorize("hasAnyRole('ROLE_USER' , 'ROLE_ADMIN')")
	@PutMapping("update/person")
	public MessageResponse updatePerson(Authentication auth, @RequestBody PersonRequest person) {
		return employeeService.updatePerson(auth, person);
	}
	
}
