package com.employeemicroservice.repository;

import javax.persistence.Id;
import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.employeemicroservice.model.Employee;

@Transactional
@Repository
public interface EmployeeRepository extends JpaRepository<Employee, Id> {
	
	Employee findByNumber(String number);
	
}
