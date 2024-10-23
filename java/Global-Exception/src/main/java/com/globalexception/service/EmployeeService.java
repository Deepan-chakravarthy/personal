package com.globalexception.service;

import java.util.List;

import com.globalexception.entity.Employee;

public interface EmployeeService {

	public Employee add(Employee employee);
	
	public List<Employee> getAllEmployees();
	
	public Employee getEmpByempid(Long empidL);
	
	public void deleteEmpById(Long empidL);
	
//	public Employee updateEmployee(Employee employee);
	
}
