package com.employeemanagement.dao;

import java.util.List;

import org.springframework.security.core.Authentication;

import com.employeemanagement.dto.AddressRequest;
import com.employeemanagement.dto.EmployeeRequest;
import com.employeemanagement.dto.EmployeeResponse;
import com.employeemanagement.dto.MessageResponse;
import com.employeemanagement.dto.PersonRequest;
import com.employeemanagement.exception.BusinessException;
import com.employeemanagement.model.Employee;

public interface EmployeeDao {

	public List<Employee> viewAll(Integer pageNo, Integer pageSize, String number);
	
	public MessageResponse addEmployee(EmployeeRequest employeeRequest);
	
	public EmployeeResponse viewByEmployeeNo(String employeeNo);
	
	public EmployeeResponse viewByEmployeeNo(Authentication auth);
	
	public List<Employee> viewAll();
	
	public MessageResponse deleteEmployee(String employeeNo) throws BusinessException;
	
	public MessageResponse updateEmployee(EmployeeRequest employeeRequest);
	
	public MessageResponse updateAddress(Authentication auth, AddressRequest address);
	
	public MessageResponse updatePerson(Authentication auth, PersonRequest person);
	
}
