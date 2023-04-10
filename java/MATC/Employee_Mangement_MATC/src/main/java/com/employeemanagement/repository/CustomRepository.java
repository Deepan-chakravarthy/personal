package com.employeemanagement.repository;

import java.util.List;

import com.employeemanagement.model.Employee;

public interface CustomRepository {

	List<Employee> search(String content);
	
}
