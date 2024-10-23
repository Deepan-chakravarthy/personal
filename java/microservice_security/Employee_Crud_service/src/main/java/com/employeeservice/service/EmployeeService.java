package com.employeeservice.service;

import java.util.List;

import com.employeeservice.entity.Employee;

public interface EmployeeService {

	public Employee add(Employee employee);
	
	public List<Employee> getAllEmployees();
	
	public Employee getEmpByNumber(Integer empNumber);
	
	public void deleteByNumber(Integer empNumber);
	
	public Employee updateEmployee(Employee employee);
	
}
