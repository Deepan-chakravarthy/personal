package com.employeemanagement.repository;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.employeemanagement.model.Employee;

@Transactional
@Repository
public interface EmployeeRepository extends JpaRepository<Employee, Integer> {

	Employee findByNumber(String number); 
	
}
