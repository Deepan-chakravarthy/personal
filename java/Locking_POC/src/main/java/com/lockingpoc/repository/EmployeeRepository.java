package com.lockingpoc.repository;

import javax.persistence.LockModeType;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Lock;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.lockingpoc.model.Employee;

@Transactional
@Repository
public interface EmployeeRepository extends JpaRepository<Employee, String> {

//	@Lock(LockModeType.PESSIMISTIC_READ)
	@Lock(LockModeType.OPTIMISTIC_FORCE_INCREMENT)
	Employee findByName(String name);
	
}
