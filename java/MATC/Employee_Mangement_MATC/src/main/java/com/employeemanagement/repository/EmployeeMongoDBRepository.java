package com.employeemanagement.repository;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.data.mongodb.repository.config.EnableMongoRepositories;

import com.employeemanagement.model.Employee;

@EnableMongoRepositories
public interface EmployeeMongoDBRepository extends MongoRepository<Employee, Integer> {

}
