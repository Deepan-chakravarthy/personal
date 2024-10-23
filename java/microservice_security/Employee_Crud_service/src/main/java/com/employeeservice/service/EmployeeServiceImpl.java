package com.employeeservice.service;

import java.util.List;
import java.util.NoSuchElementException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.employeeservice.customexception.EmptyInputException;
import com.employeeservice.entity.Employee;
import com.employeeservice.repository.EmployeeRepository;

@Service
public class EmployeeServiceImpl implements EmployeeService {

	@Autowired
	private EmployeeRepository employeeRepository;
	
	@Override
	public Employee add(Employee employee) {
		
		if(employee.getName() == null || employee.getAge() == null || employee.getNumber() == null) {
			throw new EmptyInputException("001", "Input fields are empty");
		}
		Employee savedEmployee = employeeRepository.save(employee);
		return savedEmployee;
	}

	@Override
	public List<Employee> getAllEmployees() {
	    List<Employee> employeeList = employeeRepository.findAll();
		return employeeList;
	}

	@Override
	public Employee getEmpByNumber(Integer empNumber) {
		Employee getEmployee = employeeRepository.findByNumber(empNumber);
		if(getEmployee == null) {
			throw new NoSuchElementException();
		}
		return getEmployee;
	}

	@Override
	public void deleteByNumber(Integer empNumber) {
		 employeeRepository.deleteByNumber(empNumber);
	}

	@Override
	public Employee updateEmployee(Employee employee) {
		Integer empNumber = employee.getNumber();
		if(empNumber == null || employee.getName() == null || employee.getAge() == null) {
			throw new EmptyInputException("001", "Input fields is empty");
		} 
		Employee updatEmployee = employeeRepository.findByNumber(empNumber);
		if(updatEmployee == null) {
			throw new NoSuchElementException();
		}
		updatEmployee.setName(employee.getName());
		updatEmployee.setAge(employee.getAge());
		employeeRepository.save(updatEmployee);
		return updatEmployee;
	}

}
