package com.employeemanagement.dao;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Component;
import org.springframework.util.ObjectUtils;

import com.employeemanagement.dto.AddressRequest;
import com.employeemanagement.dto.EmployeeRequest;
import com.employeemanagement.dto.EmployeeResponse;
import com.employeemanagement.dto.MessageResponse;
import com.employeemanagement.dto.PersonRequest;
import com.employeemanagement.exception.BusinessException;
import com.employeemanagement.model.Address;
import com.employeemanagement.model.Employee;
import com.employeemanagement.model.Person;
import com.employeemanagement.repository.EmployeeMongoDBRepository;
import com.employeemanagement.repository.EmployeeRepository;

import lombok.extern.log4j.Log4j2;

@Log4j2
@Component
public class EmployeeDaoImp implements EmployeeDao {

	@Autowired
	EmployeeRepository employeeRepository;
	
	@Autowired
	EmployeeMongoDBRepository employeeMongoDBRepository;

	@Override
	public List<Employee> viewAll(Integer pageNo, Integer pageSize, String number) {
		PageRequest paging = PageRequest.of(pageNo, pageSize, Sort.by(number));
		Page<Employee> pagedResult = employeeRepository.findAll(paging);
		return pagedResult.toList();
	}
	
	@Override
	public MessageResponse addEmployee(EmployeeRequest employeeRequest) {
		Employee saveEmployee = new Employee();
		BeanUtils.copyProperties(employeeRequest, saveEmployee);
		log.info(employeeRequest);
		log.info(saveEmployee);
		employeeRepository.save(saveEmployee);
		employeeMongoDBRepository.save(saveEmployee);
		log.info("Employee successfully saved - EmployeeDAO");
		return new MessageResponse(saveEmployee.getPerson().getName() + " successfully saved");
	}

	@Override
	public EmployeeResponse viewByEmployeeNo(String employeeNo) {
		EmployeeResponse getEmployee = new EmployeeResponse();
		Employee employee = employeeRepository.findByNumber(employeeNo);
		BeanUtils.copyProperties(employee, getEmployee);
		log.info(employee);
		log.info(getEmployee);
		return getEmployee;
	}

	@Override
	public EmployeeResponse viewByEmployeeNo(Authentication auth) {
		EmployeeResponse getEmployee = new EmployeeResponse();
		String employeeNo = auth.getName();
		log.info(employeeNo);
		Employee employee = employeeRepository.findByNumber(employeeNo);
		BeanUtils.copyProperties(employee, getEmployee);
		log.info(getEmployee);
		return getEmployee;
	}

	@Override
	public List<Employee> viewAll() {
		return employeeRepository.findAll();
	}

	@Override
	public MessageResponse deleteEmployee(String employeeNo) throws BusinessException {
		Employee employee = new Employee();
		try {
			employee = employeeRepository.findByNumber(employeeNo);
			employeeRepository.delete(employee);
			log.info(employeeNo + " removed successfully");
		} catch (Exception e) {
			log.error(employeeNo + " not found");
//        	throw new BusinessException(BaseErrorCodes.RECORD_NOT_FOUND.name(), BaseErrorCodes.RECORD_NOT_FOUND.message());
			throw new BusinessException("RECORD_NOT_FOUND", "RECORD_NOT_FOUND", new String[] { employeeNo });
		}
		return new MessageResponse(employeeNo + " removed successfully");
	}

	@Override
	public MessageResponse updateEmployee(EmployeeRequest employeeRequest) {
		String employeeNumber = employeeRequest.getNumber();
		Employee putEmployee = employeeRepository.findByNumber(employeeNumber);
		if (!ObjectUtils.isEmpty(putEmployee)) {
			if (employeeRequest.getEmail() != null) {
				putEmployee.setEmail(employeeRequest.getEmail());
			}
			if (employeeRequest.getDesignation() != null) {
				putEmployee.setDesignation(employeeRequest.getDesignation());
			}
			putEmployee.setUpdatedDate(LocalDateTime.now());
			employeeRepository.save(putEmployee);
			log.info(employeeNumber + " was updated successfully");
			return new MessageResponse(employeeNumber + " was updated successfully");
		} else {
			log.error(employeeNumber + " not found");
			return new MessageResponse(employeeNumber + " not found");
		}
	}

	@Override
	public MessageResponse updateAddress(Authentication auth, AddressRequest address) {
		String employeeNo = auth.getName();
		log.info(employeeNo);
		Employee updateEmployee = employeeRepository.findByNumber(employeeNo);
		List<Address> addresses = new ArrayList<>();
		addresses.addAll(updateEmployee.getAddress());
		addresses.stream().forEach(x -> {
			if (x.getType().equals(address.getType())) {
				if (address.getDoorNumber() != null)
					x.setDoorNumber(address.getDoorNumber());
				if (address.getStreet() != null)
					x.setStreet(address.getDistrict());
				if (address.getDistrict() != null)
					x.setDistrict(address.getDistrict());
				if (address.getState() != null)
					x.setState(address.getState());
				if (address.getPinCode() != null)
					x.setPinCode(address.getPinCode());
			}
		});
		updateEmployee.setAddress(addresses);
		employeeRepository.save(updateEmployee);
		log.info(employeeNo + " was updated successfully");
		return new MessageResponse(employeeNo + " was updated successfully");
	}

	@Override
	public MessageResponse updatePerson(Authentication auth, PersonRequest person) {
		String employeeNo = auth.getName();
		log.info(employeeNo);
		Employee updateEmployee = employeeRepository.findByNumber(employeeNo);
        Person updatePerson = updateEmployee.getPerson();
        if(person.getName() != null)
        	updatePerson.setName(person.getName());
        if(person.getAge() != null)
        	updatePerson.setAge(person.getAge());
        if(person.getDob() != null)
        	updatePerson.setDob(person.getDob());
        if(person.getGender() != null)
        	updatePerson.setGender(person.getGender());
        if(person.getMobile() != null)
        	updatePerson.setMobile(person.getMobile());
        if(person.getQualification() != null)
        	updatePerson.setQualification(person.getQualification());
        updateEmployee.setPerson(updatePerson);
        employeeRepository.save(updateEmployee);
    	log.info(employeeNo + " was updated successfully");
		return new MessageResponse(employeeNo + " was updated successfully");
	}

}
