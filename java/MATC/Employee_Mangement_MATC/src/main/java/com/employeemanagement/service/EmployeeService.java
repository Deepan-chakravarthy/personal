package com.employeemanagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Component;

import com.employeemanagement.dao.EmployeeDao;
import com.employeemanagement.dto.AddressRequest;
import com.employeemanagement.dto.EmployeeRequest;
import com.employeemanagement.dto.EmployeeResponse;
import com.employeemanagement.dto.MessageResponse;
import com.employeemanagement.dto.PersonRequest;
import com.employeemanagement.exception.BusinessException;
import com.employeemanagement.model.Employee;
import com.employeemanagement.validation.Validator;

import lombok.extern.log4j.Log4j2;

@Log4j2
@Component
public class EmployeeService {

	@Autowired
	EmployeeDao employeeDao;
	
	@Autowired
	Validator validator;

	public List<Employee> viewAll(Integer pageNo, Integer pageSize, String number) {
		return employeeDao.viewAll(pageNo, pageSize, number);
	}
	
	public MessageResponse addEmployee(EmployeeRequest employeeRequest) throws BusinessException {
		log.info(employeeRequest);
		MessageResponse messageResponse;
		try {
			validator.checkValidEmployeeNumber(employeeRequest.getNumber());
			validator.checkValidMobileNumber(employeeRequest.getPerson().getMobile());
			messageResponse = employeeDao.addEmployee(employeeRequest);
		} catch (BusinessException e) {
			log.info("service - failed");
			throw new BusinessException(e.getErrorCode(), e.getMessage(), e.getErrorParams());
		}
		return messageResponse;
	}

	public EmployeeResponse viewByEmployeeNo(String employeeNo) {
		return employeeDao.viewByEmployeeNo(employeeNo);
	}

	public EmployeeResponse viewByEmployeeNo(Authentication auth) {
		return employeeDao.viewByEmployeeNo(auth);
	}

	public List<Employee> viewAll() {
		return employeeDao.viewAll();
	}

	public MessageResponse deleteEmployee(String employeeNo) throws BusinessException {
		try {
			MessageResponse message = employeeDao.deleteEmployee(employeeNo);
			log.info("Successfully Deleted");
			return message;
		} catch (BusinessException e) {
			log.error("Record not found");
			throw new BusinessException(e.getErrorCode(), e.getMessage(), e.getErrorParams());
		}
	}

	public MessageResponse updateEmployee(EmployeeRequest employeeRequest) {
		return employeeDao.updateEmployee(employeeRequest);
	}

	public MessageResponse updateAddress(Authentication auth, AddressRequest address) {
		return employeeDao.updateAddress(auth, address);
	}

	public MessageResponse updatePerson(Authentication auth, PersonRequest person) {
		return employeeDao.updatePerson(auth, person);
	}
	
}
