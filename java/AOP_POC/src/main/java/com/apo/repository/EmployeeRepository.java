package com.apo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.apo.model.Employee;

@Transactional
@Repository
public interface EmployeeRepository extends JpaRepository<Employee, String> {

}
