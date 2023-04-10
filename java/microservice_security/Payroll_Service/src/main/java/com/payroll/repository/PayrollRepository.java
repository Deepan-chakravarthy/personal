package com.payroll.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.payroll.entity.Payroll;

@Transactional
@Repository
public interface PayrollRepository extends JpaRepository<Payroll, Long> {

	Payroll findByEmployeeNumber(Integer employeeNumber);
	
	void deleteByEmployeeNumber(Integer employeeNumber);
	
}
