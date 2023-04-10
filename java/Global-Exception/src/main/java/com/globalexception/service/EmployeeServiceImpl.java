package com.globalexception.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.globalexception.customexception.EmptyInputException;
import com.globalexception.entity.Employee;
import com.globalexception.repository.EmployeeRepository;

@Service
public class EmployeeServiceImpl implements EmployeeService {

	@Autowired
	private EmployeeRepository employeeRepository;
	
	@Override
	public Employee add(Employee employee) {
		
		if(employee.getName() == null || employee.getSalary() == null ) {
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
	public Employee getEmpByempid(Long empidL) {
		Employee getEmployee = employeeRepository.findById(empidL).get();
		return getEmployee;
	}

	@Override
	public void deleteEmpById(Long empidL) {
		 employeeRepository.deleteById(empidL);
	}

//	@Override
//	public Employee updateEmployee(Employee employee) {
//		return null;
//	}

}
