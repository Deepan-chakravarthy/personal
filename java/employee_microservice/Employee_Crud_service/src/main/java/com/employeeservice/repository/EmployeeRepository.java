package com.employeeservice.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.employeeservice.entity.Employee;

@Transactional
@Repository
public interface EmployeeRepository extends JpaRepository<Employee, Long> {

	Employee findByNumber(Integer number);
	
	void deleteByNumber(Integer number);
	
}
